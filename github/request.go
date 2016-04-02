package github

import (
	"crypto/hmac"
	"crypto/sha1"
	"fmt"
	"github.com/f110/go-github-hook-slack-proxy/env"
	"log"
	"net/http"
	"os"
)

var GithubSecret = os.Getenv("GITHUB_SECRET")

func calcSignature(body []byte) string {
	mac := hmac.New(sha1.New, []byte(GithubSecret))
	mac.Write(body)
	return fmt.Sprintf("sha1=%x", mac.Sum(nil))
}

func ValidRequest(req *http.Request, body []byte) bool {
	eventType := req.Header.Get("X-Github-Event")
	if eventType == "" {
		return false
	}
	if env.DEBUG {
		log.Print("X-Github-Event: " + eventType)
	}

	signature := req.Header.Get("X-Hub-Signature")
	if env.DEBUG && signature != "" {
		log.Print("X-Hub-Signature: " + signature)
		log.Print("Calcurated Signature: " + calcSignature(body))
	}
	if signature != "" && signature != calcSignature(body) {
		return false
	}

	return true
}
