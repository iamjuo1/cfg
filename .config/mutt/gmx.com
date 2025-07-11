set folder    = ~/mail/gmx
set spoolfile = +INBOX
set record    = +Sent
set postponed = +Drafts
set trash     = +Trash

mailboxes +INBOX +Sent +Drafts +Spam +Trash

source neomuttrc
