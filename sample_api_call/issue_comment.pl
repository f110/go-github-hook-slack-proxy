#!/usr/bin/env perl
use Helper;

Helper->call;

__DATA__
@@ header
content-type: application/json
User-Agent: GitHub-Hookshot/333881f
X-GitHub-Delivery: 67a99700-9a8a-11e5-9884-69dcea94690e
X-GitHub-Event: issue_comment
@@ body
{
  "action": "created",
  "issue": {
    "url": "https://api.github.com/repos/f110/test/issues/4",
    "labels_url": "https://api.github.com/repos/f110/test/issues/4/labels{/name}",
    "comments_url": "https://api.github.com/repos/f110/test/issues/4/comments",
    "events_url": "https://api.github.com/repos/f110/test/issues/4/events",
    "html_url": "https://github.com/f110/test/pull/4",
    "id": 120401033,
    "number": 4,
    "title": "Revert \"Test 3\"",
    "user": {
      "login": "f110",
      "id": 2178441,
      "avatar_url": "https://avatars.githubusercontent.com/u/2178441?v=3",
      "gravatar_id": "",
      "url": "https://api.github.com/users/f110",
      "html_url": "https://github.com/f110",
      "followers_url": "https://api.github.com/users/f110/followers",
      "following_url": "https://api.github.com/users/f110/following{/other_user}",
      "gists_url": "https://api.github.com/users/f110/gists{/gist_id}",
      "starred_url": "https://api.github.com/users/f110/starred{/owner}{/repo}",
      "subscriptions_url": "https://api.github.com/users/f110/subscriptions",
      "organizations_url": "https://api.github.com/users/f110/orgs",
      "repos_url": "https://api.github.com/users/f110/repos",
      "events_url": "https://api.github.com/users/f110/events{/privacy}",
      "received_events_url": "https://api.github.com/users/f110/received_events",
      "type": "User",
      "site_admin": false
    },
    "labels": [

    ],
    "state": "open",
    "locked": false,
    "assignee": null,
    "milestone": null,
    "comments": 1,
    "created_at": "2015-12-04T13:24:29Z",
    "updated_at": "2015-12-04T13:24:54Z",
    "closed_at": null,
    "pull_request": {
      "url": "https://api.github.com/repos/f110/test/pulls/4",
      "html_url": "https://github.com/f110/test/pull/4",
      "diff_url": "https://github.com/f110/test/pull/4.diff",
      "patch_url": "https://github.com/f110/test/pull/4.patch"
    },
    "body": "Reverts f110/test#3"
  },
  "comment": {
    "url": "https://api.github.com/repos/f110/test/issues/comments/161967226",
    "html_url": "https://github.com/f110/test/pull/4#issuecomment-161967226",
    "issue_url": "https://api.github.com/repos/f110/test/issues/4",
    "id": 161967226,
    "user": {
      "login": "f110",
      "id": 2178441,
      "avatar_url": "https://avatars.githubusercontent.com/u/2178441?v=3",
      "gravatar_id": "",
      "url": "https://api.github.com/users/f110",
      "html_url": "https://github.com/f110",
      "followers_url": "https://api.github.com/users/f110/followers",
      "following_url": "https://api.github.com/users/f110/following{/other_user}",
      "gists_url": "https://api.github.com/users/f110/gists{/gist_id}",
      "starred_url": "https://api.github.com/users/f110/starred{/owner}{/repo}",
      "subscriptions_url": "https://api.github.com/users/f110/subscriptions",
      "organizations_url": "https://api.github.com/users/f110/orgs",
      "repos_url": "https://api.github.com/users/f110/repos",
      "events_url": "https://api.github.com/users/f110/events{/privacy}",
      "received_events_url": "https://api.github.com/users/f110/received_events",
      "type": "User",
      "site_admin": false
    },
    "created_at": "2015-12-04T13:24:54Z",
    "updated_at": "2015-12-04T13:24:54Z",
    "body": "長いコメント\r\n\r\n改行もした\r\n\r\n長いコメント\r\n\r\n改行もした\r\n\r\n長いコメント\r\n\r\n改行もした\r\n\r\n長いコメント\r\n\r\n改行もした\r\n\r\n長いコメント\r\n\r\n改行もした\r\n\r\n長いコメント\r\n\r\n改行もした\r\n\r\n長いコメント\r\n\r\n改行もした\r\n\r\n長いコメント\r\n\r\n改行もした\r\n\r\n長いコメント\r\n\r\n改行もした\r\n\r\n長いコメント\r\n\r\n改行もした\r\n\r\n長いコメント\r\n\r\n改行もした\r\n\r\n長いコメント\r\n\r\n改行もした\r\n\r\n長いコメント\r\n\r\n改行もした\r\n\r\n長いコメント\r\n\r\n改行もした\r\n\r\n長いコメント\r\n\r\n改行もした\r\n\r\n長いコメント\r\n\r\n改行もした\r\n\r\n長いコメント\r\n\r\n改行もした\r\n\r\n"
  },
  "repository": {
    "id": 47386105,
    "name": "test",
    "full_name": "f110/test",
    "owner": {
      "login": "f110",
      "id": 2178441,
      "avatar_url": "https://avatars.githubusercontent.com/u/2178441?v=3",
      "gravatar_id": "",
      "url": "https://api.github.com/users/f110",
      "html_url": "https://github.com/f110",
      "followers_url": "https://api.github.com/users/f110/followers",
      "following_url": "https://api.github.com/users/f110/following{/other_user}",
      "gists_url": "https://api.github.com/users/f110/gists{/gist_id}",
      "starred_url": "https://api.github.com/users/f110/starred{/owner}{/repo}",
      "subscriptions_url": "https://api.github.com/users/f110/subscriptions",
      "organizations_url": "https://api.github.com/users/f110/orgs",
      "repos_url": "https://api.github.com/users/f110/repos",
      "events_url": "https://api.github.com/users/f110/events{/privacy}",
      "received_events_url": "https://api.github.com/users/f110/received_events",
      "type": "User",
      "site_admin": false
    },
    "private": false,
    "html_url": "https://github.com/f110/test",
    "description": "",
    "fork": false,
    "url": "https://api.github.com/repos/f110/test",
    "forks_url": "https://api.github.com/repos/f110/test/forks",
    "keys_url": "https://api.github.com/repos/f110/test/keys{/key_id}",
    "collaborators_url": "https://api.github.com/repos/f110/test/collaborators{/collaborator}",
    "teams_url": "https://api.github.com/repos/f110/test/teams",
    "hooks_url": "https://api.github.com/repos/f110/test/hooks",
    "issue_events_url": "https://api.github.com/repos/f110/test/issues/events{/number}",
    "events_url": "https://api.github.com/repos/f110/test/events",
    "assignees_url": "https://api.github.com/repos/f110/test/assignees{/user}",
    "branches_url": "https://api.github.com/repos/f110/test/branches{/branch}",
    "tags_url": "https://api.github.com/repos/f110/test/tags",
    "blobs_url": "https://api.github.com/repos/f110/test/git/blobs{/sha}",
    "git_tags_url": "https://api.github.com/repos/f110/test/git/tags{/sha}",
    "git_refs_url": "https://api.github.com/repos/f110/test/git/refs{/sha}",
    "trees_url": "https://api.github.com/repos/f110/test/git/trees{/sha}",
    "statuses_url": "https://api.github.com/repos/f110/test/statuses/{sha}",
    "languages_url": "https://api.github.com/repos/f110/test/languages",
    "stargazers_url": "https://api.github.com/repos/f110/test/stargazers",
    "contributors_url": "https://api.github.com/repos/f110/test/contributors",
    "subscribers_url": "https://api.github.com/repos/f110/test/subscribers",
    "subscription_url": "https://api.github.com/repos/f110/test/subscription",
    "commits_url": "https://api.github.com/repos/f110/test/commits{/sha}",
    "git_commits_url": "https://api.github.com/repos/f110/test/git/commits{/sha}",
    "comments_url": "https://api.github.com/repos/f110/test/comments{/number}",
    "issue_comment_url": "https://api.github.com/repos/f110/test/issues/comments{/number}",
    "contents_url": "https://api.github.com/repos/f110/test/contents/{+path}",
    "compare_url": "https://api.github.com/repos/f110/test/compare/{base}...{head}",
    "merges_url": "https://api.github.com/repos/f110/test/merges",
    "archive_url": "https://api.github.com/repos/f110/test/{archive_format}{/ref}",
    "downloads_url": "https://api.github.com/repos/f110/test/downloads",
    "issues_url": "https://api.github.com/repos/f110/test/issues{/number}",
    "pulls_url": "https://api.github.com/repos/f110/test/pulls{/number}",
    "milestones_url": "https://api.github.com/repos/f110/test/milestones{/number}",
    "notifications_url": "https://api.github.com/repos/f110/test/notifications{?since,all,participating}",
    "labels_url": "https://api.github.com/repos/f110/test/labels{/name}",
    "releases_url": "https://api.github.com/repos/f110/test/releases{/id}",
    "created_at": "2015-12-04T06:32:54Z",
    "updated_at": "2015-12-04T06:32:54Z",
    "pushed_at": "2015-12-04T13:24:30Z",
    "git_url": "git://github.com/f110/test.git",
    "ssh_url": "git@github.com:f110/test.git",
    "clone_url": "https://github.com/f110/test.git",
    "svn_url": "https://github.com/f110/test",
    "homepage": null,
    "size": 1,
    "stargazers_count": 0,
    "watchers_count": 0,
    "language": null,
    "has_issues": true,
    "has_downloads": true,
    "has_wiki": true,
    "has_pages": false,
    "forks_count": 0,
    "mirror_url": null,
    "open_issues_count": 1,
    "forks": 0,
    "open_issues": 1,
    "watchers": 0,
    "default_branch": "master"
  },
  "sender": {
    "login": "f110",
    "id": 2178441,
    "avatar_url": "https://avatars.githubusercontent.com/u/2178441?v=3",
    "gravatar_id": "",
    "url": "https://api.github.com/users/f110",
    "html_url": "https://github.com/f110",
    "followers_url": "https://api.github.com/users/f110/followers",
    "following_url": "https://api.github.com/users/f110/following{/other_user}",
    "gists_url": "https://api.github.com/users/f110/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/f110/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/f110/subscriptions",
    "organizations_url": "https://api.github.com/users/f110/orgs",
    "repos_url": "https://api.github.com/users/f110/repos",
    "events_url": "https://api.github.com/users/f110/events{/privacy}",
    "received_events_url": "https://api.github.com/users/f110/received_events",
    "type": "User",
    "site_admin": false
  }
}