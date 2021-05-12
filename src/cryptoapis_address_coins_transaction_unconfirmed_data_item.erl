-module(cryptoapis_address_coins_transaction_unconfirmed_data_item).

-export([encode/1]).

-export_type([cryptoapis_address_coins_transaction_unconfirmed_data_item/0]).

-type cryptoapis_address_coins_transaction_unconfirmed_data_item() ::
    #{ 'blockchain' := binary(),
       'network' := binary(),
       'address' := binary(),
       'transactionId' := binary(),
       'amount' := binary(),
       'unit' := binary(),
       'direction' := binary(),
       'firstSeenInMempoolTimestamp' := integer()
     }.

encode(#{ 'blockchain' := Blockchain,
          'network' := Network,
          'address' := Address,
          'transactionId' := TransactionId,
          'amount' := Amount,
          'unit' := Unit,
          'direction' := Direction,
          'firstSeenInMempoolTimestamp' := FirstSeenInMempoolTimestamp
        }) ->
    #{ 'blockchain' => Blockchain,
       'network' => Network,
       'address' => Address,
       'transactionId' => TransactionId,
       'amount' => Amount,
       'unit' => Unit,
       'direction' => Direction,
       'firstSeenInMempoolTimestamp' => FirstSeenInMempoolTimestamp
     }.
