
(cl:in-package :asdf)

(defsystem "world_manager_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "SceneBox" :depends-on ("_package_SceneBox"))
    (:file "_package_SceneBox" :depends-on ("_package"))
    (:file "SceneObject" :depends-on ("_package_SceneObject"))
    (:file "_package_SceneObject" :depends-on ("_package"))
  ))