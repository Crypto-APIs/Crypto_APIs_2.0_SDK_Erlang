-module(cryptoapis_address_tokens_transaction_confirmed_each_confirmation_data_item).

-export([encode/1]).

-export_type([cryptoapis_address_tokens_transaction_confirmed_each_confirmation_data_item/0]).

-type cryptoapis_address_tokens_transaction_confirmed_each_confirmation_data_item() ::
    #{ 'blockchain' := binary(),
       'network' := binary(),
       'address' := binary(),
       'minedInBlock' := cryptoapis_address_tokens_transaction_confirmed_each_confirmation_data_item_mined_in_block:cryptoapis_address_tokens_transaction_confirmed_each_confirmation_data_item_mined_in_block(),
       'transactionId' := binary(),
       'currentConfirmations' := integer(),
       'targetConfirmations' := integer(),
       'tokenType' := binary(),
       'token' := cryptoapis_address_tokens_transaction_confirmed_each_confirmation_token:cryptoapis_address_tokens_transaction_confirmed_each_confirmation_token(),
       'direction' := binary()
     }.

encode(#{ 'blockchain' := Blockchain,
          'network' := Network,
          'address' := Address,
          'minedInBlock' := MinedInBlock,
          'transactionId' := TransactionId,
          'currentConfirmations' := CurrentConfirmations,
          'targetConfirmations' := TargetConfirmations,
          'tokenType' := TokenType,
          'token' := Token,
          'direction' := Direction
        }) ->
    #{ 'blockchain' => Blockchain,
       'network' => Network,
       'address' => Address,
       'minedInBlock' => MinedInBlock,
       'transactionId' => TransactionId,
       'currentConfirmations' => CurrentConfirmations,
       'targetConfirmations' => TargetConfirmations,
       'tokenType' => TokenType,
       'token' => Token,
       'direction' => Direction
     }.
