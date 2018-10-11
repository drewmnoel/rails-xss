# README

Simple PoC of Brakeman missing some XSS checks

```
git clone https://github.com/drewmnoel/rails-xss.git
cd rails-xss
bundle install --path vendor/bundle
rails s
```

Vulnerable example:
`http://localhost:3000/unsafe?xss=%3Cscript%3Ealert(1)%3C/script%3E`

Brakeman report:
```

== Brakeman Report ==

Application Path: /home/dnoel/rails-xss
Rails Version: 5.2.1
Brakeman Version: 4.3.0
Scan Date: 2018-10-11 14:13:01 -0500
Duration: 0.232350973 seconds
Checks Run: BasicAuth, BasicAuthTimingAttack, ContentTag, CreateWith, CrossSiteScripting, DefaultRoutes, Deserialize, DetailedExceptions, DigestDoS, DynamicFinders, EscapeFunction, Evaluation, Execute, FileAccess, FileDisclosure, FilterSkipping, ForgerySetting, HeaderDoS, I18nXSS, JRubyXML, JSONEncoding, JSONParsing, LinkTo, LinkToHref, MailTo, MassAssignment, MimeTypeDoS, ModelAttrAccessible, ModelAttributes, ModelSerialize, NestedAttributes, NestedAttributesBypass, NumberToCurrency, PermitAttributes, QuoteTableName, Redirect, RegexDoS, Render, RenderDoS, RenderInline, ResponseSplitting, RouteDoS, SQL, SQLCVEs, SSLVerify, SafeBufferManipulation, SanitizeMethods, SelectTag, SelectVulnerability, Send, SendFile, SessionManipulation, SessionSettings, SimpleFormat, SingleQuotes, SkipBeforeFilter, StripTags, SymbolDoSCVE, TranslateBug, UnsafeReflection, ValidationRegex, WithoutProtection, XMLDoS, YAMLParsing

== Overview ==

Controllers: 2
Models: 1
Templates: 4
Errors: 0
Security Warnings: 0

== Warning Types ==


== Controller Overview ==

Controller: ApplicationController
Parent: ActionController::Base
Routes: [None]

Controller: UnsafeController
Parent: ApplicationController
Routes: [None]

== Template Output ==

layouts/application

[Escaped Output] csrf_meta_tags
[Escaped Output] csp_meta_tag
[Escaped Output] stylesheet_link_tag("application", :media => "all", :"data-turbolinks-track" => "reload")
[Escaped Output] javascript_include_tag("application", :"data-turbolinks-track" => "reload")
[Escaped Output] yield

layouts/mailer

[Escaped Output] yield

unsafe/erb

[Escaped Output] xss.html_safe

unsafe/index

[Escaped Output] xss.html_safe

No warnings found
```
