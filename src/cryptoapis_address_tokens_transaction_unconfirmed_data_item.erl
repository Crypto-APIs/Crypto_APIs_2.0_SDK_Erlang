-module(cryptoapis_address_tokens_transaction_unconfirmed_data_item).

-export([encode/1]).

-export_type([cryptoapis_address_tokens_transaction_unconfirmed_data_item/0]).

-type cryptoapis_address_tokens_transaction_unconfirmed_data_item() ::
    #{ 'blockchain' := binary(),
       'network' := binary(),
       'address' := binary(),
       'transactionId' := binary(),
       'tokenType' := binary(),
       'token' := cryptoapis_address_tokens_transaction_unconfirmed_token:cryptoapis_address_tokens_transaction_unconfirmed_token(),
       'direction' := binary(),
       'firstSeenInMempoolTimestamp' := integer()
     }.

encode(#{ 'blockchain' := Blockchain,
          'network' := Network,
          'address' := Address,
          'transactionId' := TransactionId,
          'tokenType' := TokenType,
          'token' := Token,
          'direction' := Direction,
          'firstSeenInMempoolTimestamp' := FirstSeenInMempoolTimestamp
        }) ->
    #{ 'blockchain' => Blockchain,
       'network' => Network,
       'address' => Address,
       'transactionId' => TransactionId,
       'tokenType' => TokenType,
       'token' => Token,
       'direction' => Direction,
       'firstSeenInMempoolTimestamp' => FirstSeenInMempoolTimestamp
     }.
