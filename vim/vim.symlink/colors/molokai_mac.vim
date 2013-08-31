


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>DotFiles/vim/colors/molokai_mac.vim at master · lukaszkorecki/DotFiles</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="https://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <meta property="og:image" content="https://github.global.ssl.fastly.net/images/modules/logos_page/Octocat.png">
    <meta name="hostname" content="fe1.rs.github.com">
    <meta name="ruby" content="ruby 2.0.0p247-github4 (2013-06-27) [x86_64-linux]">
    <link rel="assets" href="https://github.global.ssl.fastly.net/">
    <link rel="xhr-socket" href="/_sockets" />
    
    


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" /><meta content="1379988" name="octolytics-actor-id" /><meta content="lucmendelowski" name="octolytics-actor-login" /><meta content="9dc37ecf8090d23d3f46cdb0cdad49d0e7b87e0c5cc38267efba83c8bd2c5247" name="octolytics-actor-hash" />
    

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="7f8lKJ7K02nqUrBHjSmyYsxGtNX4cTH7dDYO7BguPHI=" name="csrf-token" />

    <link href="https://github.global.ssl.fastly.net/assets/github-5cef3265073ea21d432560828ca2385fc61c35ea.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://github.global.ssl.fastly.net/assets/github2-599048231308405a57ed982f74ba5e249891263a.css" media="all" rel="stylesheet" type="text/css" />
    


      <script src="https://github.global.ssl.fastly.net/assets/frameworks-f86a2975a82dceee28e5afe598d1ebbfd7109d79.js" type="text/javascript"></script>
      <script src="https://github.global.ssl.fastly.net/assets/github-bee7cf65a16cf415ef2a09019296948a086a39ce.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="09052798b8a3ef7d544b0e3cc446407c">

        <link data-pjax-transient rel='permalink' href='/lukaszkorecki/DotFiles/blob/be2ab4ec473ad1f4f69305d9456eb149b0d29b0b/vim/colors/molokai_mac.vim'>
  <meta property="og:title" content="DotFiles"/>
  <meta property="og:type" content="githubog:gitrepository"/>
  <meta property="og:url" content="https://github.com/lukaszkorecki/DotFiles"/>
  <meta property="og:image" content="https://github.global.ssl.fastly.net/images/gravatars/gravatar-user-420.png"/>
  <meta property="og:site_name" content="GitHub"/>
  <meta property="og:description" content="DotFiles - My Dotfiles (vim + zsh + tmux + irb + rvm + others) "/>

  <meta name="description" content="DotFiles - My Dotfiles (vim + zsh + tmux + irb + rvm + others) " />

  <meta content="104818" name="octolytics-dimension-user_id" /><meta content="lukaszkorecki" name="octolytics-dimension-user_login" /><meta content="286240" name="octolytics-dimension-repository_id" /><meta content="lukaszkorecki/DotFiles" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="286240" name="octolytics-dimension-repository_network_root_id" /><meta content="lukaszkorecki/DotFiles" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/lukaszkorecki/DotFiles/commits/master.atom" rel="alternate" title="Recent Commits to DotFiles:master" type="application/atom+xml" />

  </head>


  <body class="logged_in page-blob macintosh vis-public env-production ">

    <div class="wrapper">
      
      
      


      <div class="header header-logged-in true">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/">
  <span class="mega-octicon octicon-mark-github"></span>
</a>

    <div class="divider-vertical"></div>

    
    <a href="/notifications" class="notification-indicator tooltipped downwards" data-gotokey="n" title="You have no unread notifications">
        <span class="mail-status all-read"></span>
</a>    <div class="divider-vertical"></div>


      <div class="command-bar js-command-bar  in-repository">
          <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<input type="text" data-hotkey="/ s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    data-username="lucmendelowski"
      data-repo="lukaszkorecki/DotFiles"
      data-branch="master"
      data-sha="cacb2285d0efc4b413e092c97c6b99e9b91c329a"
  >

    <input type="hidden" name="nwo" value="lukaszkorecki/DotFiles" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="octicon help tooltipped downwards" title="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
        <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
            <li><a href="https://gist.github.com">Gist</a></li>
            <li><a href="/blog">Blog</a></li>
            <li><a href="https://help.github.com">Help</a></li>
        </ul>
      </div>

    


  <ul id="user-links">
    <li>
      <a href="/lucmendelowski" class="name">
        <img height="20" src="https://2.gravatar.com/avatar/0de259db59c7f2d92d43574b7b890313?d=https%3A%2F%2Fidenticons.github.com%2Fa07671cb21aebcd9daaa8fbcac724054.png&amp;s=140" width="20" /> lucmendelowski
      </a>
    </li>

      <li>
        <a href="/new" id="new_repo" class="tooltipped downwards" title="Create a new repo" aria-label="Create a new repo">
          <span class="octicon octicon-repo-create"></span>
        </a>
      </li>

      <li>
        <a href="/settings/profile" id="account_settings"
          class="tooltipped downwards"
          aria-label="Account settings "
          title="Account settings ">
          <span class="octicon octicon-tools"></span>
        </a>
      </li>
      <li>
        <a class="tooltipped downwards" href="/logout" data-method="post" id="logout" title="Sign out" aria-label="Sign out">
          <span class="octicon octicon-log-out"></span>
        </a>
      </li>

  </ul>

<div class="js-new-dropdown-contents hidden">
  

<ul class="dropdown-menu">
  <li>
    <a href="/new"><span class="octicon octicon-repo-create"></span> New repository</a>
  </li>
  <li>
    <a href="/organizations/new"><span class="octicon octicon-organization"></span> New organization</a>
  </li>



    <li class="section-title">
      <span title="lukaszkorecki/DotFiles">This repository</span>
    </li>
    <li>
      <a href="/lukaszkorecki/DotFiles/issues/new"><span class="octicon octicon-issue-opened"></span> New issue</a>
    </li>
</ul>

</div>


    
  </div>
</div>

      

      




          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        

<ul class="pagehead-actions">

    <li class="subscription">
      <form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="authenticity_token" type="hidden" value="7f8lKJ7K02nqUrBHjSmyYsxGtNX4cTH7dDYO7BguPHI=" /></div>  <input id="repository_id" name="repository_id" type="hidden" value="286240" />

    <div class="select-menu js-menu-container js-select-menu">
        <a class="social-count js-social-count" href="/lukaszkorecki/DotFiles/watchers">
          7
        </a>
      <span class="minibutton select-menu-button with-count js-menu-target">
        <span class="js-select-button">
          <span class="octicon octicon-eye-watch"></span>
          Watch
        </span>
      </span>

      <div class="select-menu-modal-holder">
        <div class="select-menu-modal subscription-menu-modal js-menu-content">
          <div class="select-menu-header">
            <span class="select-menu-title">Notification status</span>
            <span class="octicon octicon-remove-close js-menu-close"></span>
          </div> <!-- /.select-menu-header -->

          <div class="select-menu-list js-navigation-container">

            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input checked="checked" id="do_included" name="do" type="radio" value="included" />
                <h4>Not watching</h4>
                <span class="description">You only receive notifications for discussions in which you participate or are @mentioned.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye-watch"></span>
                  Watch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_subscribed" name="do" type="radio" value="subscribed" />
                <h4>Watching</h4>
                <span class="description">You receive notifications for all discussions in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye-unwatch"></span>
                  Unwatch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_ignore" name="do" type="radio" value="ignore" />
                <h4>Ignoring</h4>
                <span class="description">You do not receive any notifications for discussions in this repository.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-mute"></span>
                  Stop ignoring
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

          </div> <!-- /.select-menu-list -->

        </div> <!-- /.select-menu-modal -->
      </div> <!-- /.select-menu-modal-holder -->
    </div> <!-- /.select-menu -->

</form>
    </li>

  <li>
  
<div class="js-toggler-container js-social-container starring-container ">
  <a href="/lukaszkorecki/DotFiles/unstar" class="minibutton with-count js-toggler-target star-button starred upwards" title="Unstar this repo" data-remote="true" data-method="post" rel="nofollow">
    <span class="octicon octicon-star-delete"></span><span class="text">Unstar</span>
  </a>
  <a href="/lukaszkorecki/DotFiles/star" class="minibutton with-count js-toggler-target star-button unstarred upwards" title="Star this repo" data-remote="true" data-method="post" rel="nofollow">
    <span class="octicon octicon-star"></span><span class="text">Star</span>
  </a>
  <a class="social-count js-social-count" href="/lukaszkorecki/DotFiles/stargazers">28</a>
</div>

  </li>


        <li>
          <a href="/lukaszkorecki/DotFiles/fork" class="minibutton with-count js-toggler-target fork-button lighter upwards" title="Fork this repo" rel="nofollow" data-method="post">
            <span class="octicon octicon-git-branch-create"></span><span class="text">Fork</span>
          </a>
          <a href="/lukaszkorecki/DotFiles/network" class="social-count">2</a>
        </li>


</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="repo-label"><span>public</span></span>
          <span class="mega-octicon octicon-repo"></span>
          <span class="author">
            <a href="/lukaszkorecki" class="url fn" itemprop="url" rel="author"><span itemprop="title">lukaszkorecki</span></a></span
          ><span class="repohead-name-divider">/</span><strong
          ><a href="/lukaszkorecki/DotFiles" class="js-current-repository js-repo-home-link">DotFiles</a></strong>

          <span class="page-context-loader">
            <img alt="Octocat-spinner-32" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">

      <div class="repository-with-sidebar repo-container ">

        <div class="repository-sidebar">
            

<div class="repo-nav repo-nav-full js-repository-container-pjax js-octicon-loaders">
  <div class="repo-nav-contents">
    <ul class="repo-menu">
      <li class="tooltipped leftwards" title="Code">
        <a href="/lukaszkorecki/DotFiles" aria-label="Code" class="js-selected-navigation-item selected" data-gotokey="c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /lukaszkorecki/DotFiles">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

        <li class="tooltipped leftwards" title="Issues">
          <a href="/lukaszkorecki/DotFiles/issues" aria-label="Issues" class="js-selected-navigation-item js-disable-pjax" data-gotokey="i" data-selected-links="repo_issues /lukaszkorecki/DotFiles/issues">
            <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>

      <li class="tooltipped leftwards" title="Pull Requests"><a href="/lukaszkorecki/DotFiles/pulls" aria-label="Pull Requests" class="js-selected-navigation-item js-disable-pjax" data-gotokey="p" data-selected-links="repo_pulls /lukaszkorecki/DotFiles/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class='counter'>0</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


        <li class="tooltipped leftwards" title="Wiki">
          <a href="/lukaszkorecki/DotFiles/wiki" aria-label="Wiki" class="js-selected-navigation-item " data-pjax="true" data-selected-links="repo_wiki /lukaszkorecki/DotFiles/wiki">
            <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>
    </ul>
    <div class="repo-menu-separator"></div>
    <ul class="repo-menu">

      <li class="tooltipped leftwards" title="Pulse">
        <a href="/lukaszkorecki/DotFiles/pulse" aria-label="Pulse" class="js-selected-navigation-item " data-pjax="true" data-selected-links="pulse /lukaszkorecki/DotFiles/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Graphs">
        <a href="/lukaszkorecki/DotFiles/graphs" aria-label="Graphs" class="js-selected-navigation-item " data-pjax="true" data-selected-links="repo_graphs repo_contributors /lukaszkorecki/DotFiles/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Network">
        <a href="/lukaszkorecki/DotFiles/network" aria-label="Network" class="js-selected-navigation-item js-disable-pjax" data-selected-links="repo_network /lukaszkorecki/DotFiles/network">
          <span class="octicon octicon-git-branch"></span> <span class="full-word">Network</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


  </div>
</div>

            <div class="only-with-full-nav">
              

  

<div class="clone-url "
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><strong>HTTPS</strong> clone URL</h3>

  <input type="text" class="clone js-url-field"
         value="https://github.com/lukaszkorecki/DotFiles.git" readonly="readonly">

  <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/lukaszkorecki/DotFiles.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
</div>

  

<div class="clone-url open"
  data-protocol-type="ssh"
  data-url="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=clone">
  <h3><strong>SSH</strong> clone URL</h3>

  <input type="text" class="clone js-url-field"
         value="git@github.com:lukaszkorecki/DotFiles.git" readonly="readonly">

  <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="git@github.com:lukaszkorecki/DotFiles.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><strong>Subversion</strong> checkout URL</h3>

  <input type="text" class="clone js-url-field"
         value="https://github.com/lukaszkorecki/DotFiles" readonly="readonly">

  <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/lukaszkorecki/DotFiles" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
</div>



<p class="clone-options">You can clone with
    <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>,
    <a href="#" class="js-clone-selector" data-protocol="ssh">SSH</a>,
    <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>,
  and <a href="https://help.github.com/articles/which-remote-url-should-i-use">other methods.</a>
</p>

  <a href="github-mac://openRepo/https://github.com/lukaszkorecki/DotFiles" class="minibutton sidebar-button">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>


                <a href="/lukaszkorecki/DotFiles/archive/master.zip"
                   class="minibutton sidebar-button"
                   title="Download this repository as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
            </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:6e12264c59913c688e6db0563600be78 -->
<!-- blob contrib frag key: views10/v8/blob_contributors:v21:6e12264c59913c688e6db0563600be78 -->

<p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

<a href="/lukaszkorecki/DotFiles/find/master" data-pjax data-hotkey="t" style="display:none">Show File Finder</a>

<div class="file-navigation">
  


<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target" data-hotkey="w"
    data-master-branch="master"
    data-ref="master" role="button" aria-label="Switch branches or tags">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax>

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-remove-close js-menu-close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/lukaszkorecki/DotFiles/blob/battery/vim/colors/molokai_mac.vim" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="battery" data-skip-pjax="true" rel="nofollow" title="battery">battery</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/lukaszkorecki/DotFiles/blob/master/vim/colors/molokai_mac.vim" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="master" data-skip-pjax="true" rel="nofollow" title="master">master</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/lukaszkorecki/DotFiles/blob/pathogen/vim/colors/molokai_mac.vim" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="pathogen" data-skip-pjax="true" rel="nofollow" title="pathogen">pathogen</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/lukaszkorecki/DotFiles" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">DotFiles</span></a></span></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/lukaszkorecki/DotFiles/tree/master/vim" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">vim</span></a></span><span class="separator"> / </span><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/lukaszkorecki/DotFiles/tree/master/vim/colors" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">colors</span></a></span><span class="separator"> / </span><strong class="final-path">molokai_mac.vim</strong> <span class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="vim/colors/molokai_mac.vim" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


  <div class="commit commit-loader file-history-tease js-deferred-content" data-url="/lukaszkorecki/DotFiles/contributors/master/vim/colors/molokai_mac.vim">
    Fetching contributors…

    <div class="participation">
      <p class="loader-loading"><img alt="Octocat-spinner-32-eaf2f5" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32-EAF2F5.gif" width="16" /></p>
      <p class="loader-error">Cannot retrieve contributors at this time</p>
    </div>
  </div>

<div id="files" class="bubble">
  <div class="file">
    <div class="meta">
      <div class="info">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">file</span>
          <span>213 lines (187 sloc)</span>
        <span>7.668 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
                <a class="minibutton tooltipped leftwards"
                   title="Clicking this button will automatically fork this project so you can edit the file"
                   href="/lukaszkorecki/DotFiles/edit/master/vim/colors/molokai_mac.vim"
                   data-method="post" rel="nofollow">Edit</a>
          <a href="/lukaszkorecki/DotFiles/raw/master/vim/colors/molokai_mac.vim" class="button minibutton " id="raw-url">Raw</a>
            <a href="/lukaszkorecki/DotFiles/blame/master/vim/colors/molokai_mac.vim" class="button minibutton ">Blame</a>
          <a href="/lukaszkorecki/DotFiles/commits/master/vim/colors/molokai_mac.vim" class="button minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->
            <a class="minibutton danger empty-icon tooltipped downwards"
               href="/lukaszkorecki/DotFiles/delete/master/vim/colors/molokai_mac.vim"
               title="Fork this project and delete file"
               data-method="post" data-test-id="delete-blob-file" rel="nofollow">
            Delete
          </a>
      </div><!-- /.actions -->

    </div>
        <div class="blob-wrapper data type-viml js-blob-data">
        <table class="file-code file-diff">
          <tr class="file-code-line">
            <td class="blob-line-nums">
              <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>
<span id="L116" rel="#L116">116</span>
<span id="L117" rel="#L117">117</span>
<span id="L118" rel="#L118">118</span>
<span id="L119" rel="#L119">119</span>
<span id="L120" rel="#L120">120</span>
<span id="L121" rel="#L121">121</span>
<span id="L122" rel="#L122">122</span>
<span id="L123" rel="#L123">123</span>
<span id="L124" rel="#L124">124</span>
<span id="L125" rel="#L125">125</span>
<span id="L126" rel="#L126">126</span>
<span id="L127" rel="#L127">127</span>
<span id="L128" rel="#L128">128</span>
<span id="L129" rel="#L129">129</span>
<span id="L130" rel="#L130">130</span>
<span id="L131" rel="#L131">131</span>
<span id="L132" rel="#L132">132</span>
<span id="L133" rel="#L133">133</span>
<span id="L134" rel="#L134">134</span>
<span id="L135" rel="#L135">135</span>
<span id="L136" rel="#L136">136</span>
<span id="L137" rel="#L137">137</span>
<span id="L138" rel="#L138">138</span>
<span id="L139" rel="#L139">139</span>
<span id="L140" rel="#L140">140</span>
<span id="L141" rel="#L141">141</span>
<span id="L142" rel="#L142">142</span>
<span id="L143" rel="#L143">143</span>
<span id="L144" rel="#L144">144</span>
<span id="L145" rel="#L145">145</span>
<span id="L146" rel="#L146">146</span>
<span id="L147" rel="#L147">147</span>
<span id="L148" rel="#L148">148</span>
<span id="L149" rel="#L149">149</span>
<span id="L150" rel="#L150">150</span>
<span id="L151" rel="#L151">151</span>
<span id="L152" rel="#L152">152</span>
<span id="L153" rel="#L153">153</span>
<span id="L154" rel="#L154">154</span>
<span id="L155" rel="#L155">155</span>
<span id="L156" rel="#L156">156</span>
<span id="L157" rel="#L157">157</span>
<span id="L158" rel="#L158">158</span>
<span id="L159" rel="#L159">159</span>
<span id="L160" rel="#L160">160</span>
<span id="L161" rel="#L161">161</span>
<span id="L162" rel="#L162">162</span>
<span id="L163" rel="#L163">163</span>
<span id="L164" rel="#L164">164</span>
<span id="L165" rel="#L165">165</span>
<span id="L166" rel="#L166">166</span>
<span id="L167" rel="#L167">167</span>
<span id="L168" rel="#L168">168</span>
<span id="L169" rel="#L169">169</span>
<span id="L170" rel="#L170">170</span>
<span id="L171" rel="#L171">171</span>
<span id="L172" rel="#L172">172</span>
<span id="L173" rel="#L173">173</span>
<span id="L174" rel="#L174">174</span>
<span id="L175" rel="#L175">175</span>
<span id="L176" rel="#L176">176</span>
<span id="L177" rel="#L177">177</span>
<span id="L178" rel="#L178">178</span>
<span id="L179" rel="#L179">179</span>
<span id="L180" rel="#L180">180</span>
<span id="L181" rel="#L181">181</span>
<span id="L182" rel="#L182">182</span>
<span id="L183" rel="#L183">183</span>
<span id="L184" rel="#L184">184</span>
<span id="L185" rel="#L185">185</span>
<span id="L186" rel="#L186">186</span>
<span id="L187" rel="#L187">187</span>
<span id="L188" rel="#L188">188</span>
<span id="L189" rel="#L189">189</span>
<span id="L190" rel="#L190">190</span>
<span id="L191" rel="#L191">191</span>
<span id="L192" rel="#L192">192</span>
<span id="L193" rel="#L193">193</span>
<span id="L194" rel="#L194">194</span>
<span id="L195" rel="#L195">195</span>
<span id="L196" rel="#L196">196</span>
<span id="L197" rel="#L197">197</span>
<span id="L198" rel="#L198">198</span>
<span id="L199" rel="#L199">199</span>
<span id="L200" rel="#L200">200</span>
<span id="L201" rel="#L201">201</span>
<span id="L202" rel="#L202">202</span>
<span id="L203" rel="#L203">203</span>
<span id="L204" rel="#L204">204</span>
<span id="L205" rel="#L205">205</span>
<span id="L206" rel="#L206">206</span>
<span id="L207" rel="#L207">207</span>
<span id="L208" rel="#L208">208</span>
<span id="L209" rel="#L209">209</span>
<span id="L210" rel="#L210">210</span>
<span id="L211" rel="#L211">211</span>
<span id="L212" rel="#L212">212</span>

            </td>
            <td class="blob-line-code">
                    <div class="highlight"><pre><div class='line' id='LC1'><span class="c">&quot; Vim color file</span></div><div class='line' id='LC2'><span class="c">&quot;</span></div><div class='line' id='LC3'><span class="c">&quot; Author: Tomas Restrepo &lt;tomas@winterdom.com&gt;</span></div><div class='line' id='LC4'><span class="c">&quot;</span></div><div class='line' id='LC5'><span class="c">&quot; Note: Based on the monokai theme for textmate</span></div><div class='line' id='LC6'><span class="c">&quot; by Wimer Hazenberg and its darker variant</span></div><div class='line' id='LC7'><span class="c">&quot; by Hamish Stuart Macpherson</span></div><div class='line' id='LC8'><span class="c">&quot;</span></div><div class='line' id='LC9'><span class="c">&quot; A few additional edits by Mac (http://veryhappythings.github.com)</span></div><div class='line' id='LC10'><br/></div><div class='line' id='LC11'><span class="k">hi</span> clear</div><div class='line' id='LC12'><br/></div><div class='line' id='LC13'><span class="k">set</span> <span class="nb">background</span><span class="p">=</span><span class="nb">dark</span></div><div class='line' id='LC14'><span class="k">if</span> <span class="k">version</span> <span class="p">&gt;</span> <span class="m">580</span></div><div class='line' id='LC15'><span class="c">    &quot; no guarantees for version 5.8 and below, but this makes it stop</span></div><div class='line' id='LC16'><span class="c">    &quot; complaining</span></div><div class='line' id='LC17'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">hi</span> clear</div><div class='line' id='LC18'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">if</span> exists<span class="p">(</span><span class="s2">&quot;syntax_on&quot;</span><span class="p">)</span></div><div class='line' id='LC19'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nb">syntax</span> reset</div><div class='line' id='LC20'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">endif</span></div><div class='line' id='LC21'><span class="k">endif</span></div><div class='line' id='LC22'><span class="k">let</span> <span class="k">g</span>:colors_name<span class="p">=</span><span class="s2">&quot;molokai_mac&quot;</span></div><div class='line' id='LC23'><br/></div><div class='line' id='LC24'><span class="k">if</span> exists<span class="p">(</span><span class="s2">&quot;g:molokai_original&quot;</span><span class="p">)</span></div><div class='line' id='LC25'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> <span class="k">s</span>:molokai_original <span class="p">=</span> <span class="k">g</span>:molokai_original</div><div class='line' id='LC26'><span class="k">else</span></div><div class='line' id='LC27'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">let</span> <span class="k">s</span>:molokai_original <span class="p">=</span> <span class="m">0</span></div><div class='line' id='LC28'><span class="k">endif</span></div><div class='line' id='LC29'><br/></div><div class='line' id='LC30'><br/></div><div class='line' id='LC31'><span class="k">hi</span> Boolean         guifg<span class="p">=</span>#AE81FF</div><div class='line' id='LC32'><span class="k">hi</span> Character       guifg<span class="p">=</span>#E6DB74</div><div class='line' id='LC33'><span class="k">hi</span> Number          guifg<span class="p">=</span>#AE81FF</div><div class='line' id='LC34'><span class="k">hi</span> String          guifg<span class="p">=</span>#E6DB74</div><div class='line' id='LC35'><span class="k">hi</span> Conditional     guifg<span class="p">=</span>#D06189               <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC36'><span class="k">hi</span> Constant        guifg<span class="p">=</span>#AE81FF               <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC37'><span class="k">hi</span> Cursor          guifg<span class="p">=</span><span class="mh">#000000</span> guibg<span class="p">=</span>#F8F8F0</div><div class='line' id='LC38'><span class="k">hi</span> Debug           guifg<span class="p">=</span>#BCA3A3               <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC39'><span class="k">hi</span> Define          guifg<span class="p">=</span>#<span class="m">66</span>D<span class="m">9</span>EF</div><div class='line' id='LC40'><span class="k">hi</span> Delimiter       guifg<span class="p">=</span>#<span class="m">8</span>F<span class="m">8</span>F<span class="m">8</span>F</div><div class='line' id='LC41'><span class="k">hi</span> DiffAdd                       guibg<span class="p">=</span>#<span class="m">13354</span>A</div><div class='line' id='LC42'><span class="k">hi</span> DiffChange      guifg<span class="p">=</span>#<span class="m">89807</span>D guibg<span class="p">=</span>#<span class="m">4</span>C<span class="m">4745</span></div><div class='line' id='LC43'><span class="k">hi</span> DiffDelete      guifg<span class="p">=</span><span class="mh">#960050</span> guibg<span class="p">=</span>#<span class="m">1</span>E<span class="m">0010</span></div><div class='line' id='LC44'><span class="k">hi</span> DiffText                      guibg<span class="p">=</span>#<span class="m">4</span>C<span class="m">4745</span> <span class="k">gui</span><span class="p">=</span><span class="nb">italic</span><span class="p">,</span><span class="nb">bold</span></div><div class='line' id='LC45'><br/></div><div class='line' id='LC46'><span class="k">hi</span> Directory       guifg<span class="p">=</span>#A6E22E               <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC47'><span class="k">hi</span> <span class="k">Error</span>           guifg<span class="p">=</span><span class="mh">#960050</span> guibg<span class="p">=</span>#<span class="m">1</span>E<span class="m">0010</span></div><div class='line' id='LC48'><span class="k">hi</span> ErrorMsg        guifg<span class="p">=</span>#F92672 guibg<span class="p">=</span><span class="mh">#232526</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC49'><span class="k">hi</span> Exception       guifg<span class="p">=</span>#A6E22E               <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC50'><span class="k">hi</span> Float           guifg<span class="p">=</span>#AE81FF</div><div class='line' id='LC51'><span class="k">hi</span> FoldColumn      guifg<span class="p">=</span><span class="mh">#465457</span> guibg<span class="p">=</span><span class="mh">#000000</span></div><div class='line' id='LC52'><span class="k">hi</span> Folded          guifg<span class="p">=</span><span class="mh">#465457</span> guibg<span class="p">=</span><span class="mh">#000000</span></div><div class='line' id='LC53'><span class="k">hi</span> Function        guifg<span class="p">=</span>#A6E22E</div><div class='line' id='LC54'><span class="k">hi</span> Identifier      guifg<span class="p">=</span>#FD971F</div><div class='line' id='LC55'><span class="k">hi</span> Ignore          guifg<span class="p">=</span><span class="mh">#808080</span> guibg<span class="p">=</span><span class="nb">bg</span></div><div class='line' id='LC56'><span class="k">hi</span> IncSearch       guifg<span class="p">=</span>#C4BE89 guibg<span class="p">=</span><span class="mh">#000000</span></div><div class='line' id='LC57'><br/></div><div class='line' id='LC58'><span class="k">hi</span> Keyword         guifg<span class="p">=</span>#F977B3               <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC59'><span class="k">hi</span> Label           guifg<span class="p">=</span>#E6DB74               <span class="k">gui</span><span class="p">=</span>none</div><div class='line' id='LC60'><span class="k">hi</span> Macro           guifg<span class="p">=</span>#C4BE89               <span class="k">gui</span><span class="p">=</span><span class="nb">italic</span></div><div class='line' id='LC61'><span class="k">hi</span> SpecialKey      guifg<span class="p">=</span>#<span class="m">66</span>D<span class="m">9</span>EF               <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC62'><br/></div><div class='line' id='LC63'><span class="k">hi</span> MatchParen      guifg<span class="p">=</span><span class="mh">#000000</span> guibg<span class="p">=</span>#DD770D <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC64'><span class="k">hi</span> ModeMsg         guifg<span class="p">=</span>#E6DB74</div><div class='line' id='LC65'><span class="k">hi</span> MoreMsg         guifg<span class="p">=</span>#E6DB74</div><div class='line' id='LC66'><span class="k">hi</span> Operator        guifg<span class="p">=</span>#F92672</div><div class='line' id='LC67'><br/></div><div class='line' id='LC68'><span class="c">&quot; complete menu</span></div><div class='line' id='LC69'><span class="k">hi</span> Pmenu           guifg<span class="p">=</span>#<span class="m">66</span>D<span class="m">9</span>EF guibg<span class="p">=</span><span class="mh">#000000</span></div><div class='line' id='LC70'><span class="k">hi</span> PmenuSel                      guibg<span class="p">=</span><span class="mh">#808080</span></div><div class='line' id='LC71'><span class="k">hi</span> PmenuSbar                     guibg<span class="p">=</span><span class="mh">#080808</span></div><div class='line' id='LC72'><span class="k">hi</span> PmenuThumb      guifg<span class="p">=</span>#<span class="m">66</span>D<span class="m">9</span>EF</div><div class='line' id='LC73'><br/></div><div class='line' id='LC74'><span class="k">hi</span> PreCondit       guifg<span class="p">=</span>#A6E22E               <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC75'><span class="k">hi</span> PreProc         guifg<span class="p">=</span>#A6E22E</div><div class='line' id='LC76'><span class="k">hi</span> Question        guifg<span class="p">=</span>#<span class="m">66</span>D<span class="m">9</span>EF</div><div class='line' id='LC77'><span class="k">hi</span> Repeat          guifg<span class="p">=</span>#F92672               <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC78'><span class="k">hi</span> Search          guifg<span class="p">=</span>#FFFFFF guibg<span class="p">=</span><span class="mh">#455354</span></div><div class='line' id='LC79'><span class="c">&quot; marks column</span></div><div class='line' id='LC80'><span class="k">hi</span> SignColumn      guifg<span class="p">=</span>#A6E22E guibg<span class="p">=</span><span class="mh">#232526</span></div><div class='line' id='LC81'><span class="k">hi</span> SpecialChar     guifg<span class="p">=</span>#F92672               <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC82'><span class="k">hi</span> SpecialComment  guifg<span class="p">=</span><span class="mh">#465457</span>               <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC83'><span class="k">hi</span> Special         guifg<span class="p">=</span>#<span class="m">66</span>D<span class="m">9</span>EF guibg<span class="p">=</span><span class="nb">bg</span>      <span class="k">gui</span><span class="p">=</span><span class="nb">italic</span></div><div class='line' id='LC84'><span class="k">hi</span> SpecialKey      guifg<span class="p">=</span>#<span class="m">888</span>A<span class="m">85</span>               <span class="k">gui</span><span class="p">=</span><span class="nb">italic</span></div><div class='line' id='LC85'><span class="k">if</span> has<span class="p">(</span><span class="s2">&quot;spell&quot;</span><span class="p">)</span></div><div class='line' id='LC86'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">hi</span> SpellBad    guisp<span class="p">=</span>#FF0000 <span class="k">gui</span><span class="p">=</span>undercurl</div><div class='line' id='LC87'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">hi</span> SpellCap    guisp<span class="p">=</span>#<span class="m">7070</span>F<span class="m">0</span> <span class="k">gui</span><span class="p">=</span>undercurl</div><div class='line' id='LC88'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">hi</span> SpellLocal  guisp<span class="p">=</span>#<span class="m">70</span>F<span class="m">0</span>F<span class="m">0</span> <span class="k">gui</span><span class="p">=</span>undercurl</div><div class='line' id='LC89'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="k">hi</span> SpellRare   guisp<span class="p">=</span>#FFFFFF <span class="k">gui</span><span class="p">=</span>undercurl</div><div class='line' id='LC90'><span class="k">endif</span></div><div class='line' id='LC91'><span class="k">hi</span> Statement       guifg<span class="p">=</span>#E27B9D</div><div class='line' id='LC92'><span class="k">hi</span> StatusLine      guifg<span class="p">=</span><span class="mh">#455354</span> guibg<span class="p">=</span>fg</div><div class='line' id='LC93'><span class="k">hi</span> StatusLineNC    guifg<span class="p">=</span><span class="mh">#808080</span> guibg<span class="p">=</span><span class="mh">#080808</span></div><div class='line' id='LC94'><span class="k">hi</span> StorageClass    guifg<span class="p">=</span>#FD971F               <span class="k">gui</span><span class="p">=</span><span class="nb">italic</span></div><div class='line' id='LC95'><span class="k">hi</span> Structure       guifg<span class="p">=</span>#<span class="m">66</span>D<span class="m">9</span>EF</div><div class='line' id='LC96'><span class="k">hi</span> Tag             guifg<span class="p">=</span>#F92672               <span class="k">gui</span><span class="p">=</span><span class="nb">italic</span></div><div class='line' id='LC97'><span class="k">hi</span> Title           guifg<span class="p">=</span><span class="mh">#ef5939</span></div><div class='line' id='LC98'><span class="k">hi</span> Todo            guifg<span class="p">=</span>#FFFFFF guibg<span class="p">=</span><span class="nb">bg</span>      <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC99'><br/></div><div class='line' id='LC100'><span class="k">hi</span> Typedef         guifg<span class="p">=</span>#<span class="m">66</span>D<span class="m">9</span>EF</div><div class='line' id='LC101'><span class="k">hi</span> Type            guifg<span class="p">=</span>#<span class="m">66</span>D<span class="m">9</span>EF               <span class="k">gui</span><span class="p">=</span>none</div><div class='line' id='LC102'><span class="k">hi</span> Underlined      guifg<span class="p">=</span><span class="mh">#808080</span>               <span class="k">gui</span><span class="p">=</span><span class="nb">underline</span></div><div class='line' id='LC103'><br/></div><div class='line' id='LC104'><span class="k">hi</span> VertSplit       guifg<span class="p">=</span><span class="mh">#808080</span> guibg<span class="p">=</span><span class="mh">#080808</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC105'><span class="k">hi</span> VisualNOS                     guibg<span class="p">=</span>#<span class="m">403</span>D<span class="m">3</span>D</div><div class='line' id='LC106'><span class="k">hi</span> Visual                        guibg<span class="p">=</span>#<span class="m">403</span>D<span class="m">3</span>D</div><div class='line' id='LC107'><span class="k">hi</span> WarningMsg      guifg<span class="p">=</span>#FFFFFF guibg<span class="p">=</span><span class="mh">#333333</span> <span class="k">gui</span><span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC108'><span class="k">hi</span> WildMenu        guifg<span class="p">=</span>#<span class="m">66</span>D<span class="m">9</span>EF guibg<span class="p">=</span><span class="mh">#000000</span></div><div class='line' id='LC109'><br/></div><div class='line' id='LC110'><span class="k">if</span> <span class="k">s</span>:molokai_original <span class="p">==</span> <span class="m">1</span></div><div class='line' id='LC111'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Normal          guifg<span class="p">=</span>#F8F8F2 guibg<span class="p">=</span><span class="mh">#272822</span></div><div class='line' id='LC112'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Comment         guifg<span class="p">=</span>#<span class="m">938</span>E<span class="m">77</span></div><div class='line' id='LC113'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> CursorLine                    guibg<span class="p">=</span>#<span class="m">3</span>E<span class="m">3</span>D<span class="m">32</span></div><div class='line' id='LC114'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> CursorColumn                  guibg<span class="p">=</span>#<span class="m">3</span>E<span class="m">3</span>D<span class="m">32</span></div><div class='line' id='LC115'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> LineNr          guifg<span class="p">=</span>#BCBCBC guibg<span class="p">=</span>#<span class="m">3</span>B<span class="m">3</span>A<span class="m">32</span></div><div class='line' id='LC116'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> NonText         guifg<span class="p">=</span>#BCBCBC guibg<span class="p">=</span>#<span class="m">3</span>B<span class="m">3</span>A<span class="m">32</span></div><div class='line' id='LC117'><span class="k">else</span></div><div class='line' id='LC118'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Normal          guifg<span class="p">=</span>#F8F8F2 guibg<span class="p">=</span>#<span class="m">1</span>B<span class="m">1</span>D<span class="m">1</span>E</div><div class='line' id='LC119'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Comment         guifg<span class="p">=</span><span class="mh">#465457</span></div><div class='line' id='LC120'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> CursorLine                    guibg<span class="p">=</span><span class="mh">#293739</span></div><div class='line' id='LC121'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> CursorColumn                  guibg<span class="p">=</span><span class="mh">#293739</span></div><div class='line' id='LC122'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> LineNr          guifg<span class="p">=</span>#BCBCBC guibg<span class="p">=</span><span class="mh">#232526</span></div><div class='line' id='LC123'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> NonText         guifg<span class="p">=</span>#BCBCBC guibg<span class="p">=</span><span class="mh">#232526</span></div><div class='line' id='LC124'><span class="k">end</span></div><div class='line' id='LC125'><br/></div><div class='line' id='LC126'><span class="c">&quot;</span></div><div class='line' id='LC127'><span class="c">&quot; Support for 256-color terminal</span></div><div class='line' id='LC128'><span class="c">&quot;</span></div><div class='line' id='LC129'><span class="k">if</span> &amp;<span class="nb">t_Co</span> <span class="p">&gt;</span> <span class="m">255</span></div><div class='line' id='LC130'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Boolean         ctermfg<span class="p">=</span><span class="m">135</span></div><div class='line' id='LC131'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Character       ctermfg<span class="p">=</span><span class="m">144</span></div><div class='line' id='LC132'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Number          ctermfg<span class="p">=</span><span class="m">135</span></div><div class='line' id='LC133'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> String          ctermfg<span class="p">=</span><span class="m">144</span></div><div class='line' id='LC134'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Conditional     ctermfg<span class="p">=</span><span class="m">161</span>               cterm<span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC135'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Constant        ctermfg<span class="p">=</span><span class="m">135</span>               cterm<span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC136'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Cursor          ctermfg<span class="p">=</span><span class="m">16</span>  ctermbg<span class="p">=</span><span class="m">253</span></div><div class='line' id='LC137'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Debug           ctermfg<span class="p">=</span><span class="m">225</span>               cterm<span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC138'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Define          ctermfg<span class="p">=</span><span class="m">81</span></div><div class='line' id='LC139'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Delimiter       ctermfg<span class="p">=</span><span class="m">241</span></div><div class='line' id='LC140'><br/></div><div class='line' id='LC141'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> DiffAdd                     ctermbg<span class="p">=</span><span class="m">24</span></div><div class='line' id='LC142'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> DiffChange      ctermfg<span class="p">=</span><span class="m">181</span> ctermbg<span class="p">=</span><span class="m">239</span></div><div class='line' id='LC143'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> DiffDelete      ctermfg<span class="p">=</span><span class="m">162</span> ctermbg<span class="p">=</span><span class="m">53</span></div><div class='line' id='LC144'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> DiffText                    ctermbg<span class="p">=</span><span class="m">102</span> cterm<span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC145'><br/></div><div class='line' id='LC146'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Directory       ctermfg<span class="p">=</span><span class="m">118</span>               cterm<span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC147'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> <span class="k">Error</span>           ctermfg<span class="p">=</span><span class="m">219</span> ctermbg<span class="p">=</span><span class="m">89</span></div><div class='line' id='LC148'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> ErrorMsg        ctermfg<span class="p">=</span><span class="m">199</span> ctermbg<span class="p">=</span><span class="m">16</span>    cterm<span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC149'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Exception       ctermfg<span class="p">=</span><span class="m">118</span>               cterm<span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC150'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Float           ctermfg<span class="p">=</span><span class="m">135</span></div><div class='line' id='LC151'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> FoldColumn      ctermfg<span class="p">=</span><span class="m">67</span>  ctermbg<span class="p">=</span><span class="m">16</span></div><div class='line' id='LC152'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Folded          ctermfg<span class="p">=</span><span class="m">67</span>  ctermbg<span class="p">=</span><span class="m">16</span></div><div class='line' id='LC153'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Function        ctermfg<span class="p">=</span><span class="m">118</span></div><div class='line' id='LC154'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Identifier      ctermfg<span class="p">=</span><span class="m">208</span></div><div class='line' id='LC155'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Ignore          ctermfg<span class="p">=</span><span class="m">244</span> ctermbg<span class="p">=</span><span class="m">232</span></div><div class='line' id='LC156'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> IncSearch       ctermfg<span class="p">=</span><span class="m">193</span> ctermbg<span class="p">=</span><span class="m">16</span></div><div class='line' id='LC157'><br/></div><div class='line' id='LC158'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Keyword         ctermfg<span class="p">=</span><span class="m">161</span>               cterm<span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC159'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Label           ctermfg<span class="p">=</span><span class="m">229</span>               cterm<span class="p">=</span>none</div><div class='line' id='LC160'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Macro           ctermfg<span class="p">=</span><span class="m">193</span></div><div class='line' id='LC161'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> SpecialKey      ctermfg<span class="p">=</span><span class="m">81</span></div><div class='line' id='LC162'><br/></div><div class='line' id='LC163'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> MatchParen      ctermfg<span class="p">=</span><span class="m">16</span>  ctermbg<span class="p">=</span><span class="m">208</span> cterm<span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC164'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> ModeMsg         ctermfg<span class="p">=</span><span class="m">229</span></div><div class='line' id='LC165'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> MoreMsg         ctermfg<span class="p">=</span><span class="m">229</span></div><div class='line' id='LC166'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Operator        ctermfg<span class="p">=</span><span class="m">161</span></div><div class='line' id='LC167'><br/></div><div class='line' id='LC168'><span class="c">   &quot; complete menu</span></div><div class='line' id='LC169'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Pmenu           ctermfg<span class="p">=</span><span class="m">81</span>  ctermbg<span class="p">=</span><span class="m">16</span></div><div class='line' id='LC170'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> PmenuSel                    ctermbg<span class="p">=</span><span class="m">244</span></div><div class='line' id='LC171'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> PmenuSbar                   ctermbg<span class="p">=</span><span class="m">232</span></div><div class='line' id='LC172'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> PmenuThumb      ctermfg<span class="p">=</span><span class="m">81</span></div><div class='line' id='LC173'><br/></div><div class='line' id='LC174'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> PreCondit       ctermfg<span class="p">=</span><span class="m">118</span>               cterm<span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC175'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> PreProc         ctermfg<span class="p">=</span><span class="m">118</span></div><div class='line' id='LC176'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Question        ctermfg<span class="p">=</span><span class="m">81</span></div><div class='line' id='LC177'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Repeat          ctermfg<span class="p">=</span><span class="m">161</span>               cterm<span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC178'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Search          ctermfg<span class="p">=</span><span class="m">253</span> ctermbg<span class="p">=</span><span class="m">66</span></div><div class='line' id='LC179'><br/></div><div class='line' id='LC180'><span class="c">   &quot; marks column</span></div><div class='line' id='LC181'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> SignColumn      ctermfg<span class="p">=</span><span class="m">118</span> ctermbg<span class="p">=</span><span class="m">235</span></div><div class='line' id='LC182'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> SpecialChar     ctermfg<span class="p">=</span><span class="m">161</span>               cterm<span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC183'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> SpecialComment  ctermfg<span class="p">=</span><span class="m">245</span>               cterm<span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC184'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Special         ctermfg<span class="p">=</span><span class="m">81</span>  ctermbg<span class="p">=</span><span class="m">232</span></div><div class='line' id='LC185'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> SpecialKey      ctermfg<span class="p">=</span><span class="m">245</span></div><div class='line' id='LC186'><br/></div><div class='line' id='LC187'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Statement       ctermfg<span class="p">=</span><span class="m">161</span>               cterm<span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC188'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> StatusLine      ctermfg<span class="p">=</span><span class="m">238</span> ctermbg<span class="p">=</span><span class="m">253</span></div><div class='line' id='LC189'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> StatusLineNC    ctermfg<span class="p">=</span><span class="m">244</span> ctermbg<span class="p">=</span><span class="m">232</span></div><div class='line' id='LC190'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> StorageClass    ctermfg<span class="p">=</span><span class="m">208</span></div><div class='line' id='LC191'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Structure       ctermfg<span class="p">=</span><span class="m">81</span></div><div class='line' id='LC192'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Tag             ctermfg<span class="p">=</span><span class="m">161</span></div><div class='line' id='LC193'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Title           ctermfg<span class="p">=</span><span class="m">166</span></div><div class='line' id='LC194'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Todo            ctermfg<span class="p">=</span><span class="m">231</span> ctermbg<span class="p">=</span><span class="m">232</span>   cterm<span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC195'><br/></div><div class='line' id='LC196'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Typedef         ctermfg<span class="p">=</span><span class="m">81</span></div><div class='line' id='LC197'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Type            ctermfg<span class="p">=</span><span class="m">81</span>                cterm<span class="p">=</span>none</div><div class='line' id='LC198'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Underlined      ctermfg<span class="p">=</span><span class="m">244</span>               cterm<span class="p">=</span><span class="nb">underline</span></div><div class='line' id='LC199'><br/></div><div class='line' id='LC200'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> VertSplit       ctermfg<span class="p">=</span><span class="m">244</span> ctermbg<span class="p">=</span><span class="m">232</span>   cterm<span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC201'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> VisualNOS                   ctermbg<span class="p">=</span><span class="m">238</span></div><div class='line' id='LC202'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Visual                      ctermbg<span class="p">=</span><span class="m">235</span></div><div class='line' id='LC203'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> WarningMsg      ctermfg<span class="p">=</span><span class="m">231</span> ctermbg<span class="p">=</span><span class="m">238</span>   cterm<span class="p">=</span><span class="nb">bold</span></div><div class='line' id='LC204'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> WildMenu        ctermfg<span class="p">=</span><span class="m">81</span>  ctermbg<span class="p">=</span><span class="m">16</span></div><div class='line' id='LC205'><br/></div><div class='line' id='LC206'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Normal          ctermfg<span class="p">=</span><span class="m">252</span> ctermbg<span class="p">=</span><span class="m">233</span></div><div class='line' id='LC207'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> Comment         ctermfg<span class="p">=</span><span class="m">59</span></div><div class='line' id='LC208'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> CursorLine                  ctermbg<span class="p">=</span><span class="m">234</span>   cterm<span class="p">=</span>none</div><div class='line' id='LC209'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> CursorColumn                ctermbg<span class="p">=</span><span class="m">234</span></div><div class='line' id='LC210'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> LineNr          ctermfg<span class="p">=</span><span class="m">250</span> ctermbg<span class="p">=</span><span class="m">234</span></div><div class='line' id='LC211'>&nbsp;&nbsp;&nbsp;<span class="k">hi</span> NonText         ctermfg<span class="p">=</span><span class="m">250</span> ctermbg<span class="p">=</span><span class="m">234</span></div><div class='line' id='LC212'><span class="k">end</span></div></pre></div>
            </td>
          </tr>
        </table>
  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/">
      <span class="mega-octicon octicon-mark-github"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2013 <span title="0.32045s from fe1.rs.github.com">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
          <div class="suggester-container">
              <div class="suggester fullscreen-suggester js-navigation-container" id="fullscreen_suggester"
                 data-url="/lukaszkorecki/DotFiles/suggestions/commit">
              </div>
          </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped leftwards" title="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped leftwards"
      title="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-remove-close close ajax-error-dismiss"></a>
      Something went wrong with that request. Please try again.
    </div>

    
  </body>
</html>

