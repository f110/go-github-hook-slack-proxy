package github

import (
	"encoding/json"
	"github.com/f110/go-github-hook-slack-proxy/env"
	"github.com/f110/go-github-hook-slack-proxy/slack"
	"io/ioutil"
	"log"
	"net/http"
)

var dispatchTable = map[string]func(http.ResponseWriter, []byte) string{
	"fork":           HandleFork,
	"push":           HandlePush,
	"issues":         HandleIssues,
	"issue_comment":  HandleIssueComment,
	"pull_request":   HandlePullRequest,
	"commit_comment": HandleCommitComment,
	"gollum":         HandleGollum,
}

type RepositoryToChannel struct {
	Repository string   `json:"repository"`
	Channels   []string `json:"channels"`
}

func Dispatch(t string, w http.ResponseWriter, b []byte) {
	f, ok := dispatchTable[t]
	if ok == false {
		return
	}
	if env.DEBUG {
		log.Print("dispatched " + t)
	}

	confFile, _ := ioutil.ReadFile("repositories.json")
	var conf []RepositoryToChannel
	err := json.Unmarshal(confFile, &conf)
	if err != nil {
		log.Print(err)
	}

	mes := f(w, b)
	if mes == "" {
		return
	}

	var payload CommonPayload
	json.Unmarshal(b, &payload)
	for _, v := range conf {
		if v.Repository == payload.Repository.HtmlUrl {
			for _, c := range v.Channels {
				slack.SendMessage(c, "github", mes)
			}
			break
		}
	}
}
