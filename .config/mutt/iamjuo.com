set sendmail    = msmtp
set from        = 'Juozas Auryla <juozas@iamjuo.com>'
set folder      = ~/mail
set spoolfile   = INBOX
set hidden_tags = ""

named-mailboxes INBOX  notmuch://?query=tag:inbox
named-mailboxes ARCHIV notmuch://?query=tag:archive
named-mailboxes ATTCH  notmuch://?query=tag:attachment
named-mailboxes SENT   notmuch://?query=from:juozas@iamjuo.com
named-mailboxes SUCKLS notmuch://?query=to:@suckless.org
named-mailboxes ALPINE notmuch://?query=to:@alpinelinux.org
named-mailboxes SMTPD  notmuch://?query=to:@opensmtpd.org
named-mailboxes TRASH  notmuch://?query=tag:delete
named-mailboxes JUNK   notmuch://?query=folder:iamjuo/Junk
named-mailboxes *      notmuch://?query=*

source neomuttrc
