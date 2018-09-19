;;;Erase Last
(defun c:QERASE ()
  (command "erase" "previous" "")
(princ)
)

;;;Move Last
(defun c:QMOVE (/)
  (SETVAR "CMDECHO" 0)
  (command "autosnap" "31")
  (setq ssQM (ssget))
  (if (= ssQM nil) (command "move" "previous")) (command "move" ssQM "")
(princ)
)

;;;Travis Test Function
(defun c:TEP1 (/)
  (command "_.pline")
  (while (> (getvar "cmdactive") 0) (command pause))
  (command "revcloud" "a" "0.25" "0.25" "" "l" "")
(princ)
)

;;;Reload All Xrefs
(defun c:XRR (/)
  (command "-xref" "Reload" "*")
(princ)
)

;;;Set Current BYLAYER (DFE)
(defun c:DRAWBYLAYER (/)
  (SETVAR "CMDECHO" 0)
  (command "cecolor" "bylayer")
  (command "celweight" "-1")
  (command "celtype" "bylayer")
  (command "cetransparency" "bylayer")
  (command "celtscale" "1")
(princ)
)

;;;Thaw/ON 0/defpoints (TDD)
(defun c:THAWON0 (/)
  (SETVAR "CMDECHO" 0)
  (command "-layer" "thaw" "0" "")
  (command "-layer" "thaw" "defpoints" "")
  (command "-layer" "ON" "0" "")
  (command "-layer" "ON" "defpoints" "")
(princ)
)


(defun c:PLQ ()
  (command "_.RECTANG")
  (while (> (getvar "cmdactive") 0) (command pause))
  (command "change" "l" "" "p" "layer" "M-EQUIP" "")
  ;(command "bhatch"
(princ)
)


(defun c:RWLVC ()
	;;; Colors
	(command "-layer" "c" "8" "*LR_FP*" "")
	(command "-layer" "c" "8" "*LR_RCP*" "")
	(command "-layer" "c" "8" "*TT01*" "")
	(command "-layer" "c" "8" "*GR01*" "")
	(command "-layer" "c" "8" "*GR02*" "")
	(command "-layer" "c" "8" "*TH01*" "")
	(command "-layer" "c" "8" "*x_base*" "")
	(command "-layer" "c" "13" "*wall*" "")
	;;; Freeze
	;;; (command "-layer" "freeze" "layername" "")
	(command "-layer" "freeze" "*tags*door*" "")
	(command "-layer" "freeze" "*a-door-iden*" "")
	(command "-layer" "freeze" "*wall*header*" "")
	(command "-layer" "freeze" "*tags*wall*" "")
	(command "-layer" "freeze" "*area" "")
	(command "-layer" "freeze" "*tags*ceiling*" "")
	(command "-layer" "freeze" "*tags*floor*" "")
	;;; Thaw
	;;; (command "-layer" "thaw" "layername" "")
	(command "-layer" "thaw" "0" "")
	(command "-layer" "thaw" "defpoints" "")
	;;; Lock Xref
	(command "-layer" "lock" "xref" "")
	;;;
	(command "imageframe" "0")
	(command "regenall")
(princ)
)
