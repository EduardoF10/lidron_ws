
(cl:in-package :asdf)

(defsystem "leddar_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Specs" :depends-on ("_package_Specs"))
    (:file "_package_Specs" :depends-on ("_package"))
  ))