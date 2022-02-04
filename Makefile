PORT=:8888

define HELP_MESSAGE
Run make followed by any number of the following targets. For example,
`make reset`, to clear local pub and then run a pub get.

 - serve  serves web on 8888
endef
export HELP_MESSAGE

help:
	@echo "$$HELP_MESSAGE"

serve:
  -webdev serve web$(PORT)