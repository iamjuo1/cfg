set folder    = /tmp/mail
set record    = +Sent
set postponed = +Drafts
set trash     = +Trash
set spoolfile = +INBOX

mailboxes +INBOX +Sent +Drafts +Spam +Trash

source neomuttrc
