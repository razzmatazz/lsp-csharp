;;; lsp-csharp.el --- C# support for lsp-mode -*- lexical-binding: t -*-

;; Copyright (C) 2018 Saulius Menkevičius <sauliusmenkevicius@fastmail.com>

;; Author: Saulius Menkevičius <sauliusmenkevicius@fastmail.com>
;; Version: 1.0
;; Package-Requires: ((lsp-mode "3.0"))
;; Keywords: csharp
;; URL: https://github.com/emacs-lsp/lsp-csharp

;;; Code:
(require 'lsp-mode)

(require 'lsp-common)

(defun lsp-csharp--get-root ()
  "/Users/bob/src/omnisharp/test/")

(defun lsp-csharp--ls-command ()
  `("/Users/bob/.emacs.d/.cache/omnisharp/server/v1.32.6/run"
    "-s" "/Users/bob/src/omnisharp/test/test.sln"
    "--languageserver"))

(lsp-define-stdio-client
 lsp-csharp
 "csharp"
 #'lsp-csharp--get-root
 (lsp-csharp--ls-command))

(provide 'lsp-csharp)
;;; lsp-csharp.el ends here
