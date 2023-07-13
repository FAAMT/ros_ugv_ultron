;; Auto-generated. Do not edit!


(when (boundp 'connect::Num)
  (if (not (find-package "CONNECT"))
    (make-package "CONNECT"))
  (shadow 'Num (find-package "CONNECT")))
(unless (find-package "CONNECT::NUM")
  (make-package "CONNECT::NUM"))

(in-package "ROS")
;;//! \htmlinclude Num.msg.html


(defclass connect::Num
  :super ros::object
  :slots (_message ))

(defmethod connect::Num
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

(setf (get connect::Num :md5sum-) "5f003d6bcc824cbd51361d66d8e4f76c")
(setf (get connect::Num :datatype-) "connect/Num")
(setf (get connect::Num :definition-)
      "string message

")



(provide :connect/Num "5f003d6bcc824cbd51361d66d8e4f76c")


