# url_shortener
Implemented a URL shortener service for users.

* Use seeds file to create the  User (Admin/Normal):
  * rails db:seeds

* Inside seeds file i am calling service file for creating "Admin" user.
  * CreateAdminService.new.call
     * Path: app/services/create_admin_service.rb


* SMTP configuration for sending mail below is the path:
    *config/environments/development.rb


* We can check our API using CURL or Postman.
  *Ex: curl -u "username:password" http://localhost:3000/api/v1/urls
       curl -u "username:password" -d "url=URL"  http://localhost:3000/api/v1/urls

* Using Grape::API also we can create Versions to a Rails API.

* I have wrap our existing controller in a V1 module to establish our "version 1."
   * Path: app/controllers/v1/urls_controller.rb

* Gmail has some security features that have to be enabled/disabled 1 -
    *Inside your gmail account go to Settings > Forwarding and POP/IMAP and enable the protocols(s) that you wish to use
    *First sign into the Gmail account in a browser on the device where you are setting up your client app
    *Go here and enable access for "less secure" apps: https://www.google.com/settings/security/lesssecureapps

* authorize => authorize accepts a second optional argument to provide the name of the rule to use.

*If you want to check that authorization did take place in your controller, use verify_authorized as an after action.

*authenticate_user!
The authenticate_user! class method (controller only), ensures a logged in user is available to all,
or a specified set of controller actions. This method is invoked via a before_filter
Ex: before_action :authenticate_user!

*current_user
The current_user method , whose purpose is self-explanatory, simply returns the model class relating to the
signed in user. It returns nil if a user has not, as yet, signed in.

*user_signed_in?
The user_signed_in? query method, which really just checks if the current_user method returns a value that’s not nil.

*user_session
The user_session method, which returns meta data on a logged in user.

*before_action
ActionController::Base, before_action is just a new syntax for before_filter.
However all before_filters syntax are deprecated in Rails 5.0 and will be removed in Rails 5.1


*If browser show this type of error "undefined method `authorize' for". We need to stop/start spring.
Command: bin/spring stop


* You can login based on both field username/email .
For ex:
        email: demo@cybrilla.com
        username: demo


* I have written testcase inside "spec" folder for controller and model.

spec/controller/urls_controller_spec.rb
spec/models/url_spec.rb
spec/models/user_spec.rb

* Login with Google Account we need to configure projects in google console account:

1) https://console.developers.google.com/apis/credentials
2) Create credentials to access your enabled APIs.
3) Client ID and API key we need to configure in our application.
4) Origional and redirects Url we need to configure in google developer account.
