-module(cryptoapis_tokens_forwarding_fail).

-export([encode/1]).

-export_type([cryptoapis_tokens_forwarding_fail/0]).

-type cryptoapis_tokens_forwarding_fail() ::
    #{ 'apiVersion' := binary(),
       'referenceId' := binary(),
       'idempotencyKey' := binary(),
       'data' := cryptoapis_tokens_forwarding_fail_data:cryptoapis_tokens_forwarding_fail_data()
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
