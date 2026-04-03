set sendmail    = msmtp
set folder      = ~/mail
set record      = +Sent
set postponed   = +Drafts
set hidden_tags = ''
set spoolfile   = INBOX

named-mailboxes INBOX  notmuch://?query=tag:inbox
named-mailboxes ARCHIV notmuch://?query=tag:archive
named-mailboxes ATTCH  notmuch://?query=tag:attachment
named-mailboxes SENT   notmuch://?query=from:@iamjuo.com
named-mailboxes IBKR   notmuch://?query=from:@interactivebrokers.com
named-mailboxes SUCKLS notmuch://?query=to:@suckless.org
named-mailboxes ALPINE notmuch://?query=to:@alpinelinux.org
named-mailboxes SMTPD  notmuch://?query=to:@opensmtpd.org
named-mailboxes TRASH  notmuch://?query=tag:delete
named-mailboxes JUNK   notmuch://?query=folder:Junk
named-mailboxes *      notmuch://?query=*

source neomuttrc
