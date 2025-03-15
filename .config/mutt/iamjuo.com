set sendmail       = msmtp
set from           = 'Juozas Auryla <juozas@iamjuo.com>'
set folder         = ~/mail/iamjuo
set spoolfile      = +INBOX
set record         = +Sent
set postponed      = +Drafts
set trash          = +Trash
set nm_default_url = notmuch:///home/juo/mail

mailboxes +INBOX +Sent +Drafts +Junk +Trash

source neomuttrc
