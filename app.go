package main

import (
	"github.com/f110/go-github-hook-slack-proxy/github"
	"io/ioutil"
	"log"
	"net/http"
)

func handler(w http.ResponseWriter, req *http.Request) {
	body, _ := ioutil.ReadAll(req.Body)
	if github.ValidRequest(req, body) == false {
		return
	}

	github.Dispatch(req.Header.Get("X-Github-Event"), w, body)
}

func main() {
	http.HandleFunc("/hook", handler)
	log.Fatal(http.ListenAndServe(":5000", nil))
}
