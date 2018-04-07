
(cl:in-package :asdf)

(defsystem "world_manager_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :world_manager_msgs-msg
)
  :components ((:file "_package")
    (:file "AddBox" :depends-on ("_package_AddBox"))
    (:file "_package_AddBox" :depends-on ("_package"))
    (:file "AddMesh" :depends-on ("_package_AddMesh"))
    (:file "_package_AddMesh" :depends-on ("_package"))
    (:file "AddTF" :depends-on ("_package_AddTF"))
    (:file "_package_AddTF" :depends-on ("_package"))
  ))