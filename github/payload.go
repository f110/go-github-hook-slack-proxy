package github

import (
	"strconv"
)

type User struct {
	Login   string `json:"login"`
	HtmlUrl string `json:"html_url"`
	Id      int    `json:"id"`
}

func (u *User) Link() string {
	return LinkTo(u.HtmlUrl, u.Login)
}

type Repository struct {
	HtmlUrl  string `json:"html_url"`
	FullName string `json:"full_name"`
}

func (r *Repository) Link() string {
	return LinkTo(r.HtmlUrl, r.FullName)
}

type Commit struct {
	Id      string `json:"id"`
	Message string `json:"message"`
	Url     string `json:"url"`
}

type PullRequest struct {
	HtmlUrl string `json:"html_url"`
	User    User   `json:"user"`
	Title   string `json:"title"`
	Number  int    `json:"number"`
}

func (pr *PullRequest) Link() string {
	return LinkTo(pr.HtmlUrl, "pull request "+strconv.Itoa(pr.Number))
}

type Issue struct {
	User        User        `json:"user"`
	Title       string      `json:"title"`
	HtmlUrl     string      `json:"html_url"`
	Number      int         `json:"number"`
	PullRequest PullRequest `json:"pull_request"`
}

type Label struct {
	Name string `json:"name"`
}

type Comment struct {
	User     User   `json:"user"`
	HtmlUrl  string `json:"html_url"`
	Body     string `json:"body"`
	CommitId string `json:"commit_id"`
}

type Page struct {
	PageName string `json:"page_name"`
	Action   string `json:"action"`
	HtmlUrl  string `json:"html_url"`
}

type CommonPayload struct {
	Repository Repository `json:"repository"`
}

type PushPayload struct {
	Ref        string     `json:"ref"`
	Created    bool       `json:"created"`
	Deleted    bool       `json:"deleted"`
	Forced     bool       `json:"forced"`
	Sender     User       `json:"sender"`
	Repository Repository `json:"repository"`
	Before     string     `json:"before"`
	After      string     `json:"after"`
	Commits    []Commit   `json:"commits"`
}

type IssuesPayload struct {
	Action     string     `json:"action"`
	Issue      Issue      `json:"issue"`
	Repository Repository `json:"repository"`
	Label      Label      `json:"label"`
	Sender     User       `json:"sender"`
	Assignee   User       `json:"assignee"`
}

type IssueCommentPayload struct {
	Action     string     `json:"action"`
	Issue      Issue      `json:"issue"`
	Comment    Comment    `json:"comment"`
	Repository Repository `json:"repository"`
}

type PullRequestPayload struct {
	Action      string      `json:"action"`
	PullRequest PullRequest `json:"pull_request"`
	Repository  Repository  `json:"repository"`
}

type CommitCommentPayload struct {
	Comment    Comment    `json:"comment"`
	Repository Repository `json:"repository"`
}

type GollumPayload struct {
	Sender     User       `json:"sender"`
	Repository Repository `json:"repository"`
	Pages      []Page     `json:"pages"`
}

type ForkPayload struct {
	Sender     User       `json:"sender"`
	Repository Repository `json:"repository"`
}
