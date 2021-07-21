-module(cryptoapis_list_unconfirmed_omni_transactions_by_property_idri).

-export([encode/1]).

-export_type([cryptoapis_list_unconfirmed_omni_transactions_by_property_idri/0]).

-type cryptoapis_list_unconfirmed_omni_transactions_by_property_idri() ::
    #{ 'amount' := binary(),
       'divisible' := boolean(),
       'mined' := boolean(),
       'propertyId' := integer(),
       'recipients' := list(),
       'senders' := list(),
       'sent' := boolean(),
       'timestamp' := integer(),
       'transactionId' := binary(),
       'type' := binary(),
       'typeIint' := integer(),
       'version' := integer(),
       'fee' := cryptoapis_list_unconfirmed_omni_transactions_by_address_ri_fee:cryptoapis_list_unconfirmed_omni_transactions_by_address_ri_fee()
     }.

encode(#{ 'amount' := Amount,
          'divisible' := Divisible,
          'mined' := Mined,
          'propertyId' := PropertyId,
          'recipients' := Recipients,
          'senders' := Senders,
          'sent' := Sent,
          'timestamp' := Timestamp,
          'transactionId' := TransactionId,
          'type' := Type,
          'typeIint' := TypeIint,
          'version' := Version,
          'fee' := Fee
        }) ->
    #{ 'amount' => Amount,
       'divisible' => Divisible,
       'mined' => Mined,
       'propertyId' => PropertyId,
       'recipients' => Recipients,
       'senders' => Senders,
       'sent' => Sent,
       'timestamp' => Timestamp,
       'transactionId' => TransactionId,
       'type' => Type,
       'typeIint' => TypeIint,
       'version' => Version,
       'fee' => Fee
     }.
