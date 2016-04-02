#!/usr/bin/env perl
use Helper;

Helper->call;

__DATA__
@@ header
content-type: application/json
User-Agent: GitHub-Hookshot/333881f
X-GitHub-Delivery: a8e5b500-9cdd-11e5-874f-c4395dd43745
X-GitHub-Event: issues
X-Hub-Signature: sha1=e7e97cca602eeecb95988b59793515be6e720663
@@ body
{
  "action": "assigned",
  "issue": {
    "url": "https://api.github.com/repos/f110/test/issues/1",
    "labels_url": "https://api.github.com/repos/f110/test/issues/1/labels{/name}",
    "comments_url": "https://api.github.com/repos/f110/test/issues/1/comments",
    "events_url": "https://api.github.com/repos/f110/test/issues/1/events",
    "html_url": "https://github.com/f110/test/issues/1",
    "id": 120343680,
    "number": 1,
    "title": "test",
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
    "assignee": {
      "login": "fumihiroito",
      "id": 8475034,
      "avatar_url": "https://avatars.githubusercontent.com/u/8475034?v=3",
      "gravatar_id": "",
      "url": "https://api.github.com/users/fumihiroito",
      "html_url": "https://github.com/fumihiroito",
      "followers_url": "https://api.github.com/users/fumihiroito/followers",
      "following_url": "https://api.github.com/users/fumihiroito/following{/other_user}",
      "gists_url": "https://api.github.com/users/fumihiroito/gists{/gist_id}",
      "starred_url": "https://api.github.com/users/fumihiroito/starred{/owner}{/repo}",
      "subscriptions_url": "https://api.github.com/users/fumihiroito/subscriptions",
      "organizations_url": "https://api.github.com/users/fumihiroito/orgs",
      "repos_url": "https://api.github.com/users/fumihiroito/repos",
      "events_url": "https://api.github.com/users/fumihiroito/events{/privacy}",
      "received_events_url": "https://api.github.com/users/fumihiroito/received_events",
      "type": "User",
      "site_admin": false
    },
    "milestone": null,
    "comments": 1,
    "created_at": "2015-12-04T06:41:46Z",
    "updated_at": "2015-12-07T12:25:54Z",
    "closed_at": null,
    "body": "T/O"
  },
  "assignee": {
    "login": "fumihiroito",
    "id": 8475034,
    "avatar_url": "https://avatars.githubusercontent.com/u/8475034?v=3",
    "gravatar_id": "",
    "url": "https://api.github.com/users/fumihiroito",
    "html_url": "https://github.com/fumihiroito",
    "followers_url": "https://api.github.com/users/fumihiroito/followers",
    "following_url": "https://api.github.com/users/fumihiroito/following{/other_user}",
    "gists_url": "https://api.github.com/users/fumihiroito/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/fumihiroito/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/fumihiroito/subscriptions",
    "organizations_url": "https://api.github.com/users/fumihiroito/orgs",
    "repos_url": "https://api.github.com/users/fumihiroito/repos",
    "events_url": "https://api.github.com/users/fumihiroito/events{/privacy}",
    "received_events_url": "https://api.github.com/users/fumihiroito/received_events",
    "type": "User",
    "site_admin": false
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
    "pushed_at": "2015-12-06T17:24:42Z",
    "git_url": "git://github.com/f110/test.git",
    "ssh_url": "git@github.com:f110/test.git",
    "clone_url": "https://github.com/f110/test.git",
    "svn_url": "https://github.com/f110/test",
    "homepage": null,
    "size": 4,
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
