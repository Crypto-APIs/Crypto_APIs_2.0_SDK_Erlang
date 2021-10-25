-module(cryptoapis_list_unspent_transaction_outputs_by_address_ri).

-export([encode/1]).

-export_type([cryptoapis_list_unspent_transaction_outputs_by_address_ri/0]).

-type cryptoapis_list_unspent_transaction_outputs_by_address_ri() ::
    #{ 'index' := integer(),
       'locktime' := integer(),
       'minedInBlockHash' := binary(),
       'minedInBlockHeight' := integer(),
       'recipients' := list(),
       'senders' := list(),
       'size' := integer(),
       'timestamp' := integer(),
       'transactionHash' := binary(),
       'transactionId' := binary(),
       'version' := integer(),
       'vin' := list(),
       'vout' := list(),
       'fee' := cryptoapis_list_unspent_transaction_outputs_by_address_ri_fee:cryptoapis_list_unspent_transaction_outputs_by_address_ri_fee(),
       'blockchainSpecific' := cryptoapis_list_unspent_transaction_outputs_by_address_ri_blockchain_specific:cryptoapis_list_unspent_transaction_outputs_by_address_ri_blockchain_specific()
     }.

encode(#{ 'index' := Index,
          'locktime' := Locktime,
          'minedInBlockHash' := MinedInBlockHash,
          'minedInBlockHeight' := MinedInBlockHeight,
          'recipients' := Recipients,
          'senders' := Senders,
          'size' := Size,
          'timestamp' := Timestamp,
          'transactionHash' := TransactionHash,
          'transactionId' := TransactionId,
          'version' := Version,
          'vin' := Vin,
          'vout' := Vout,
          'fee' := Fee,
          'blockchainSpecific' := BlockchainSpecific
        }) ->
    #{ 'index' => Index,
       'locktime' => Locktime,
       'minedInBlockHash' => MinedInBlockHash,
       'minedInBlockHeight' => MinedInBlockHeight,
       'recipients' => Recipients,
       'senders' => Senders,
       'size' => Size,
       'timestamp' => Timestamp,
       'transactionHash' => TransactionHash,
       'transactionId' => TransactionId,
       'version' => Version,
       'vin' => Vin,
       'vout' => Vout,
       'fee' => Fee,
       'blockchainSpecific' => BlockchainSpecific
     }.
