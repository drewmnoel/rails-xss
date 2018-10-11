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
Scan Date: 2018-10-11 09:26:49 -0500
Duration: 0.22500818 seconds
Checks Run: BasicAuth, BasicAuthTimingAttack, ContentTag, CreateWith, CrossSiteScripting, DefaultRoutes, Deserialize, DetailedExceptions, DigestDoS, DynamicFinders, EscapeFunction, Evaluation, Execute, FileAccess, FileDisclosure, FilterSkipping, ForgerySetting, HeaderDoS, I18nXSS, JRubyXML, JSONEncoding, JSONParsing, LinkTo, LinkToHref, MailTo, MassAssignment, MimeTypeDoS, ModelAttrAccessible, ModelAttributes, ModelSerialize, NestedAttributes, NestedAttributesBypass, NumberToCurrency, PermitAttributes, QuoteTableName, Redirect, RegexDoS, Render, RenderDoS, RenderInline, ResponseSplitting, RouteDoS, SQL, SQLCVEs, SSLVerify, SafeBufferManipulation, SanitizeMethods, SelectTag, SelectVulnerability, Send, SendFile, SessionManipulation, SessionSettings, SimpleFormat, SingleQuotes, SkipBeforeFilter, StripTags, SymbolDoSCVE, TranslateBug, UnsafeReflection, ValidationRegex, WithoutProtection, XMLDoS, YAMLParsing

== Overview ==

Controllers: 2
Models: 1
Templates: 4
Errors: 0
Security Warnings: 0

== Warning Types ==


No warnings found
```
