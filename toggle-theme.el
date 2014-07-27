;; Author: Matthias
;; File: toggle-theme.el
;;
;; This library offers functionality to toggle between
;; a light and a dark theme.

(defgroup toggle-theme nil "The group of customizations for the toggle-theme library."
  :prefix "toggle-theme/" :group 'mp)

(defcustom default-theme 'moe-light "This theme is loaded when the library is loaded.")

(defcustom light-theme 'moe-light "The standard light theme when toggling themes."
  :group 'toggle-theme)

(defcustom dark-theme 'moe-dark "The standard dark theme when toggling themes."
  :group 'toggle-theme)

(defvar mp/current-theme default-theme "This library keeps track of the currently loaded theme via this variable.")

(defun mp/theme-toggle ()
  "Toggle between dark and light theme."
  (interactive)
  (let ((newtheme nil))
    (if (eq light-theme mp/current-theme)
	(setq newtheme dark-theme)
      (setq newtheme light-theme)
      )
    (setq mp/current-theme newtheme)
    (load-theme newtheme)
    )
  )

(load-theme default-theme)

(provide 'toggle-theme)
