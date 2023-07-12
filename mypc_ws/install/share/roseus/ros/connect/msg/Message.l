;; Auto-generated. Do not edit!


(when (boundp 'connect::Message)
  (if (not (find-package "CONNECT"))
    (make-package "CONNECT"))
  (shadow 'Message (find-package "CONNECT")))
(unless (find-package "CONNECT::MESSAGE")
  (make-package "CONNECT::MESSAGE"))

(in-package "ROS")
;;//! \htmlinclude Message.msg.html


(defclass connect::Message
  :super ros::object
  :slots (_message ))

(defmethod connect::Message
  (:init
   (&key
    ((:message __message) "")
    )
   (send-super :init)
   (setq _message (string __message))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get connect::Message :md5sum-) "5f003d6bcc824cbd51361d66d8e4f76c")
(setf (get connect::Message :datatype-) "connect/Message")
(setf (get connect::Message :definition-)
      "string message

")



(provide :connect/Message "5f003d6bcc824cbd51361d66d8e4f76c")


