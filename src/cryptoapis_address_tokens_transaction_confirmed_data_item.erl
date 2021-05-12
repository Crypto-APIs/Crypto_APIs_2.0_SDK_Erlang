-module(cryptoapis_address_tokens_transaction_confirmed_data_item).

-export([encode/1]).

-export_type([cryptoapis_address_tokens_transaction_confirmed_data_item/0]).

-type cryptoapis_address_tokens_transaction_confirmed_data_item() ::
    #{ 'blockchain' := binary(),
       'network' := binary(),
       'address' := binary(),
       'minedInBlock' := cryptoapis_address_tokens_transaction_confirmed_data_item_mined_in_block:cryptoapis_address_tokens_transaction_confirmed_data_item_mined_in_block(),
       'transactionId' := binary(),
       'tokenType' := binary(),
       'token' := cryptoapis_address_tokens_transaction_confirmed_token:cryptoapis_address_tokens_transaction_confirmed_token(),
       'direction' := binary()
     }.

encode(#{ 'blockchain' := Blockchain,
          'network' := Network,
          'address' := Address,
          'minedInBlock' := MinedInBlock,
          'transactionId' := TransactionId,
          'tokenType' := TokenType,
          'token' := Token,
          'direction' := Direction
        }) ->
    #{ 'blockchain' => Blockchain,
       'network' => Network,
       'address' => Address,
       'minedInBlock' => MinedInBlock,
       'transactionId' => TransactionId,
       'tokenType' => TokenType,
       'token' => Token,
       'direction' => Direction
     }.
