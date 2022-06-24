-module(cryptoapis_confirmed_tokens_transaction_for_certain_amount_or_higher_data_item).

-export([encode/1]).

-export_type([cryptoapis_confirmed_tokens_transaction_for_certain_amount_or_higher_data_item/0]).

-type cryptoapis_confirmed_tokens_transaction_for_certain_amount_or_higher_data_item() ::
    #{ 'blockchain' := binary(),
       'network' := binary(),
       'minedInBlock' := cryptoapis_address_tokens_transaction_confirmed_data_item_mined_in_block:cryptoapis_address_tokens_transaction_confirmed_data_item_mined_in_block(),
       'transactionId' := binary(),
       'tokenType' := binary(),
       'token' := cryptoapis_confirmed_tokens_transaction_for_certain_amount_or_higher_token:cryptoapis_confirmed_tokens_transaction_for_certain_amount_or_higher_token()
     }.

encode(#{ 'blockchain' := Blockchain,
          'network' := Network,
          'minedInBlock' := MinedInBlock,
          'transactionId' := TransactionId,
          'tokenType' := TokenType,
          'token' := Token
        }) ->
    #{ 'blockchain' => Blockchain,
       'network' => Network,
       'minedInBlock' => MinedInBlock,
       'transactionId' => TransactionId,
       'tokenType' => TokenType,
       'token' => Token
     }.
