-module(cryptoapis_create_tokens_transaction_request_from_address_ri).

-export([encode/1]).

-export_type([cryptoapis_create_tokens_transaction_request_from_address_ri/0]).

-type cryptoapis_create_tokens_transaction_request_from_address_ri() ::
    #{ 'feePriority' := binary(),
       'recipients' := list(),
       'senders' := cryptoapis_create_tokens_transaction_request_from_address_ri_senders:cryptoapis_create_tokens_transaction_request_from_address_ri_senders(),
       'tokenTypeSpecificData' := cryptoapis_create_tokens_transaction_request_from_address_ri_token_type_specific_data:cryptoapis_create_tokens_transaction_request_from_address_ri_token_type_specific_data()
     }.

encode(#{ 'feePriority' := FeePriority,
          'recipients' := Recipients,
          'senders' := Senders,
          'tokenTypeSpecificData' := TokenTypeSpecificData
        }) ->
    #{ 'feePriority' => FeePriority,
       'recipients' => Recipients,
       'senders' => Senders,
       'tokenTypeSpecificData' => TokenTypeSpecificData
     }.
