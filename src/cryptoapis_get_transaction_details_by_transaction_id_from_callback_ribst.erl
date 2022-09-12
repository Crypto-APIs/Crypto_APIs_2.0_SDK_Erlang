-module(cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribst).

-export([encode/1]).

-export_type([cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribst/0]).

-type cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribst() ::
    #{ 'amount' := binary(),
       'bandwidthUsed' := cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribst_bandwidth_used:cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribst_bandwidth_used(),
       'contract' := binary(),
       'energyUsed' := cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribst_energy_used:cryptoapis_get_transaction_details_by_transaction_id_from_callback_ribst_energy_used(),
       'hasInternalTransactions' := boolean(),
       'hasTokenTransfers' := binary(),
       'input' := binary(),
       'recipients' := binary(),
       'senders' := binary(),
       'transactionStatus' := binary()
     }.

encode(#{ 'amount' := Amount,
          'bandwidthUsed' := BandwidthUsed,
          'contract' := Contract,
          'energyUsed' := EnergyUsed,
          'hasInternalTransactions' := HasInternalTransactions,
          'hasTokenTransfers' := HasTokenTransfers,
          'input' := Input,
          'recipients' := Recipients,
          'senders' := Senders,
          'transactionStatus' := TransactionStatus
        }) ->
    #{ 'amount' => Amount,
       'bandwidthUsed' => BandwidthUsed,
       'contract' => Contract,
       'energyUsed' => EnergyUsed,
       'hasInternalTransactions' => HasInternalTransactions,
       'hasTokenTransfers' => HasTokenTransfers,
       'input' => Input,
       'recipients' => Recipients,
       'senders' => Senders,
       'transactionStatus' => TransactionStatus
     }.
