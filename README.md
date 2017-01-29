# SaltStack-Learning

This is just a small personal project for my learning

Everything is pretty much simple, I will be progressing with complex stuff as I get to work on this more.

###Launch machine
salt-cloud -p dev_ec2_public minion -l debug *Remove Debug if u want, I like to have that matrix feel*

###Test connection
salt '*' test.ping

###Go
salt '*' state.top top.sls
