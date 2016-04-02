package github

import (
	"encoding/json"
	"fmt"
	"github.com/f110/go-github-hook-slack-proxy/env"
	"log"
	"net/http"
	"strconv"
	"strings"
)

func HandlePush(w http.ResponseWriter, body []byte) string {
	var text string
	var payload PushPayload
	err := json.Unmarshal(body, &payload)
	if err != nil {
		if env.DEBUG {
			log.Print(err)
		}
		return ""
	}

	text += payload.Sender.Link() + " "
	if payload.Created {
		text += "created "
	} else if payload.Deleted {
		text += "deleted "
	} else if payload.Forced {
		text += "force-pushed "
	} else {
		text += "pushed to "
	}

	if strings.Index(payload.Ref, "refs/tags/") != -1 {
		text += "tag "
	} else {
		text += "branch "
	}
	branch := strings.SplitN(payload.Ref, "/", 3)[2]
	text += LinkTo(payload.Repository.HtmlUrl+"/tree/"+branch, branch) + " of "
	text += payload.Repository.Link()
	if payload.Forced && payload.Created == false && payload.Deleted == false {
		text += " from " + LinkTo(payload.Repository.HtmlUrl+"/commit/"+payload.Before, payload.Before[0:6])
		text += " to " + LinkTo(payload.Repository.HtmlUrl+"/commit/"+payload.After, payload.After[0:6])
	} else {
		text += "\n"
		for _, c := range payload.Commits {
			shortMessage := BriefString(c.Message, 20)
			text += "- " + shortMessage + " (" + LinkTo(c.Url, c.Id[0:6]) + ")\n"
		}
	}

	fmt.Fprint(w, text)
	return text
}

func HandleIssues(w http.ResponseWriter, body []byte) string {
	var text string
	var payload IssuesPayload
	err := json.Unmarshal(body, &payload)
	if err != nil {
		if env.DEBUG {
			log.Print(err)
		}
		return ""
	}

	text += payload.Issue.User.Link() + " " + payload.Action + " "
	text += LinkTo(payload.Issue.HtmlUrl, "issue "+strconv.Itoa(payload.Issue.Number)) + " of "
	text += payload.Repository.Link() + ": "
	text += payload.Issue.Title
	if payload.Action == "labeled" || payload.Action == "unlabeled" {
		text += " as " + LinkTo(payload.Repository.HtmlUrl+"/labels/"+payload.Label.Name, payload.Label.Name)
	}
	if payload.Action == "assigned" || payload.Action == "unassigned" {
		if payload.Sender.Id == payload.Assignee.Id {
			text += " to myself"
		} else {
			text += " to " + payload.Assignee.Link()
		}
	}

	fmt.Fprint(w, text)
	return text
}

func HandleIssueComment(w http.ResponseWriter, body []byte) string {
	var text string
	var payload IssueCommentPayload
	err := json.Unmarshal(body, &payload)
	if err != nil {
		if env.DEBUG {
			log.Print(err)
		}
		return ""
	}

	text += payload.Comment.User.Link() + " commented on "
	if payload.Issue.PullRequest.HtmlUrl != "" {
		text += LinkTo(payload.Comment.HtmlUrl, "pull request "+strconv.Itoa(payload.Issue.Number)) + " of "
	} else {
		text += LinkTo(payload.Comment.HtmlUrl, "issue "+strconv.Itoa(payload.Issue.Number)) + " of "
	}
	text += payload.Repository.Link() + ": "
	text += BriefString(payload.Comment.Body, 30)

	fmt.Fprint(w, text)
	return text
}

func HandlePullRequest(w http.ResponseWriter, body []byte) string {
	var text string
	var payload PullRequestPayload
	err := json.Unmarshal(body, &payload)
	if err != nil {
		if env.DEBUG {
			log.Print(err)
		}
		return ""
	}

	text += payload.PullRequest.User.Link() + " "
	text += payload.Action + " "
	text += payload.PullRequest.Link() + " of "
	text += payload.Repository.Link() + ": "
	text += payload.PullRequest.Title

	fmt.Fprint(w, text)
	return text
}

func HandleCommitComment(w http.ResponseWriter, body []byte) string {
	var text string
	var payload CommitCommentPayload
	err := json.Unmarshal(body, &payload)
	if err != nil {
		if env.DEBUG {
			log.Print(err)
		}
		return ""
	}

	text += payload.Comment.User.Link() + " commented on "
	text += "commit " + LinkTo(payload.Comment.HtmlUrl, payload.Comment.CommitId[0:5]) + " of "
	text += payload.Repository.Link() + ": "
	text += BriefString(payload.Comment.Body, 30)

	fmt.Fprint(w, text)
	return text
}

func HandleGollum(w http.ResponseWriter, body []byte) string {
	var text string
	var payload GollumPayload
	err := json.Unmarshal(body, &payload)
	if err != nil {
		if env.DEBUG {
			log.Print(err)
		}
		return ""
	}

	text += payload.Sender.Link() + " " + payload.Pages[0].Action + " the "
	text += LinkTo(payload.Pages[0].HtmlUrl, payload.Pages[0].PageName) + " wiki page of "
	text += payload.Repository.Link()

	fmt.Fprint(w, text)
	return text
}

func HandleFork(w http.ResponseWriter, body []byte) string {
	var text string
	var payload ForkPayload
	err := json.Unmarshal(body, &payload)
	if err != nil {
		if env.DEBUG {
			log.Print(err)
		}
		return ""
	}

	text += payload.Sender.Link() + " forked "
	text += payload.Repository.Link()

	fmt.Fprint(w, text)
	return text
}
