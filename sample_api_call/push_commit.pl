#!/usr/bin/env perl
use Helper;

Helper->call;

__DATA__
@@ header
content-type: application/json
User-Agent: GitHub-Hookshot/333881f
X-GitHub-Delivery: fc949c00-9a5a-11e5-960d-e6c5f0e736c4
X-GitHub-Event: push
X-Hub-Signature: sha1=498312751643d12cd0f4399185b88a7d9114827f
@@ body
{
  "ref": "refs/heads/test",
  "before": "b8012cded0d9b99d55b4db54b2e9c2c39a49ebe2",
  "after": "002ab36d7679fb3f5b1502063ae06b273b9f897c",
  "created": false,
  "deleted": false,
  "forced": false,
  "base_ref": null,
  "compare": "https://github.com/f110/test/compare/b8012cded0d9...002ab36d7679",
  "commits": [
    {
      "id": "002ab36d7679fb3f5b1502063ae06b273b9f897c",
      "distinct": true,
      "message": "test commit 2",
      "timestamp": "2015-12-04T16:45:18+09:00",
      "url": "https://github.com/f110/test/commit/002ab36d7679fb3f5b1502063ae06b273b9f897c",
      "author": {
        "name": "Fumihiro Ito",
        "email": "fumihiro.ito@mixi.co.jp",
        "username": "fumihiroito"
      },
      "committer": {
        "name": "Fumihiro Ito",
        "email": "fumihiro.ito@mixi.co.jp",
        "username": "fumihiroito"
      },
      "added": [

      ],
      "removed": [

      ],
      "modified": [
        "ihr.txt"
      ]
    }
  ],
  "head_commit": {
    "id": "002ab36d7679fb3f5b1502063ae06b273b9f897c",
    "distinct": true,
    "message": "test commit 2",
    "timestamp": "2015-12-04T16:45:18+09:00",
    "url": "https://github.com/f110/test/commit/002ab36d7679fb3f5b1502063ae06b273b9f897c",
    "author": {
      "name": "Fumihiro Ito",
      "email": "fumihiro.ito@mixi.co.jp",
      "username": "fumihiroito"
    },
    "committer": {
      "name": "Fumihiro Ito",
      "email": "fumihiro.ito@mixi.co.jp",
      "username": "fumihiroito"
    },
    "added": [

    ],
    "removed": [

    ],
    "modified": [
      "ihr.txt"
    ]
  },
  "repository": {
    "id": 47386105,
    "name": "test",
    "full_name": "f110/test",
    "owner": {
      "name": "f110",
      "email": "fmhrit@gmail.com"
    },
    "private": false,
    "html_url": "https://github.com/f110/test",
    "description": "",
    "fork": false,
    "url": "https://github.com/f110/test",
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
    "created_at": 1449210774,
    "updated_at": "2015-12-04T06:32:54Z",
    "pushed_at": 1449215128,
    "git_url": "git://github.com/f110/test.git",
    "ssh_url": "git@github.com:f110/test.git",
    "clone_url": "https://github.com/f110/test.git",
    "svn_url": "https://github.com/f110/test",
    "homepage": null,
    "size": 0,
    "stargazers_count": 0,
    "watchers_count": 0,
    "language": null,
    "has_issues": true,
    "has_downloads": true,
    "has_wiki": true,
    "has_pages": false,
    "forks_count": 0,
    "mirror_url": null,
    "open_issues_count": 0,
    "forks": 0,
    "open_issues": 0,
    "watchers": 0,
    "default_branch": "test",
    "stargazers": 0,
    "master_branch": "test"
  },
  "pusher": {
    "name": "f110",
    "email": "fmhrit@gmail.com"
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
