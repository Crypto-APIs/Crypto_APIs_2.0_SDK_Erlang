-module(cryptoapis_get_transaction_details_by_transaction_id_from_callback_ri).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_id_from_callback_ri/0]).

-type cryptoapis_get_transaction_details_by_transaction_id_from_callback_ri() ::
    #{ 'index' := integer(),
       'minedInBlockHash' := binary(),
       'minedInBlockHeight' := integer(),
       'recipients' := list(),
       'senders' := list(),
       'timestamp' := integer(),
       'transactionHash' := binary(),
       'fee' := cryptoapis_get_transaction_details_by_transaction_id_from_callback_ri_fee:cryptoapis_get_transaction_details_by_transaction_id_from_callback_ri_fee(),
       'isConfirmed' := boolean(),
       'blockchainSpecific' := cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribs:cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribs()
     }.

encode(#{ 'index' := Index,
          'minedInBlockHash' := MinedInBlockHash,
          'minedInBlockHeight' := MinedInBlockHeight,
          'recipients' := Recipients,
          'senders' := Senders,
          'timestamp' := Timestamp,
          'transactionHash' := TransactionHash,
          'fee' := Fee,
          'isConfirmed' := IsConfirmed,
          'blockchainSpecific' := BlockchainSpecific
        }) ->
    #{ 'index' => Index,
       'minedInBlockHash' => MinedInBlockHash,
       'minedInBlockHeight' => MinedInBlockHeight,
       'recipients' => Recipients,
       'senders' => Senders,
       'timestamp' => Timestamp,
       'transactionHash' => TransactionHash,
       'fee' => Fee,
       'isConfirmed' => IsConfirmed,
       'blockchainSpecific' => BlockchainSpecific
     }.
