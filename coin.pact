;; Define the module and specify the keyset for administrative tasks
(module coin 'admin-keyset

  ;; Define the schema for accounts: each account has a balance
  (defschema account-schema balance:decimal)

  ;; Create the accounts table using the account schema
  (deftable accounts:{account-schema})

  ;; Initializes the contract, creating an account for the admin with an initial balance
  (defun init ()
    (insert accounts 'admin (object-create 'account-schema 'balance 1000.0)))

  ;; Gets the balance of an account
  (defun balance (account:string)
    (with-read accounts account { 'balance := bal }
      bal))

  ;; Transfers tokens from one account to another
  (defun transfer (from:string to:string amount:decimal)
    (enforce (> amount 0.0) "Transfer amount must be positive")
    (with-read accounts from { 'balance := from-bal }
      (enforce (>= from-bal amount) "Insufficient funds")
      (update accounts from { 'balance: (- from-bal amount) }))
    (with-default-read accounts to (object-create 'account-schema 'balance 0.0) { 'balance := to-bal }
      (update accounts to { 'balance: (+ to-bal amount) }))))
