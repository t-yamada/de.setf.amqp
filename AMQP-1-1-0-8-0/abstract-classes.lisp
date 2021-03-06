;;; -*- Package: de.setf.amqp.implementation; -*-

(in-package :de.setf.amqp.implementation)

(document :file
  (description "This file defines abstract protocol classes for AMPQ version 0.8 components of the
 `de.setf.amqp` library.")
 (copyright
  "Copyright 2010 [james anderson](mailto:james.anderson@setf.de) All Rights Reserved"
  "'de.setf.amqp' is free software: you can redistribute it and/or modify it under the terms of version 3
  of the GNU Affero General Public License as published by the Free Software Foundation.

  'setf.amqp' is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the
  implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
  See the Affero General Public License for more details.

  A copy of the GNU Affero General Public License should be included with 'de.setf.amqp' as `AMQP:agpl.txt`.
  If not, see the GNU [site](http://www.gnu.org/licenses/)."))


(defvar amqp-1-1-0-8-0::+protocol-version+
  ':amqp-1-1-0-8-0
  "Specifies the protocol header for the highest supported version.")

(setf (version-protocol-header amqp-1-1-0-8-0::+protocol-version+) #(65 77 81 80 1 1 8 0))


(defclass amqp-1-1-0-8-0:object (amqp:object)
  ((version
   :initform amqp-1-1-0-8-0::+protocol-version+
   :allocation :class)))


(defclass amqp-1-1-0-8-0:method (amqp:method)
  ((version
   :initform amqp-1-1-0-8-0::+protocol-version+
   :allocation :class)))


(defmethod method-argument-offset ((method amqp-1-1-0-8-0::method))
  4)
