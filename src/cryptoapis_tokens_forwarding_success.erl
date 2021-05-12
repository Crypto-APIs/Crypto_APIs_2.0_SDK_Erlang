-module(cryptoapis_tokens_forwarding_success).

-export([encode/1]).

-export_type([cryptoapis_tokens_forwarding_success/0]).

-type cryptoapis_tokens_forwarding_success() ::
    #{ 'apiVersion' := binary(),
       'referenceId' := binary(),
       'idempotencyKey' := binary(),
       'data' := cryptoapis_tokens_forwarding_success_data:cryptoapis_tokens_forwarding_success_data()
     }.

encode(#{ 'apiVersion' := ApiVersion,
          'referenceId' := ReferenceId,
          'idempotencyKey' := IdempotencyKey,
          'data' := Data
        }) ->
    #{ 'apiVersion' => ApiVersion,
       'referenceId' => ReferenceId,
       'idempotencyKey' => IdempotencyKey,
       'data' => Data
     }.
