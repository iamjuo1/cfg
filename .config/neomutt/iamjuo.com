set sendmail    = msmtp
set folder      = ~/mail
set record      = +Sent
set postponed   = +Drafts
set hidden_tags = ''
set spoolfile   = INBOX

named-mailboxes INBOX  notmuch://?query=tag:inbox
named-mailboxes TODO   notmuch://?query=tag:TODO
named-mailboxes BILLS  notmuch://?query=tag:BILLS
named-mailboxes ARCHIV notmuch://?query=tag:ARCHIV
named-mailboxes ATTCH  notmuch://?query=tag:attachment
named-mailboxes SENT   notmuch://?query=tag:SENT
named-mailboxes FWD    notmuch://?query=tag:FWD
named-mailboxes IBKR   notmuch://?query=tag:IBKR
named-mailboxes T212   notmuch://?query=tag:T212
named-mailboxes TASTY  notmuch://?query=tag:TASTY
named-mailboxes WISE   notmuch://?query=tag:WISE
named-mailboxes SUCKLS notmuch://?query=tag:SUCKLS
named-mailboxes ALPINE notmuch://?query=tag:ALPINE
named-mailboxes NTMUCH notmuch://?query=tag:NTMUCH
named-mailboxes SMTPD  notmuch://?query=tag:SMTPD
named-mailboxes TRASH  notmuch://?query=tag:TRASH
named-mailboxes JUNK   notmuch://?query=folder:Junk
named-mailboxes *      notmuch://?query=*

source neomuttrc
