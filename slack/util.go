package slack

import (
	"net/http"
	"encoding/json"
	"net/url"
	"os"
	"log"
)

type PostMessage struct {
	Ok bool
}

var Token = os.Getenv("SLACK_API_TOKEN")

func SendMessage(channel string, username string, text string) {
	v := url.Values{}
	v.Set("token", Token)
	v.Set("channel", channel)
	v.Set("text", text)
	v.Set("username", username)

	response, _ := http.PostForm("https://slack.com/api/chat.postMessage", v)
	dec := json.NewDecoder(response.Body)
	var data PostMessage
	dec.Decode(&data)

	if data.Ok != true {
		log.Print(data)
	}

	return
}
