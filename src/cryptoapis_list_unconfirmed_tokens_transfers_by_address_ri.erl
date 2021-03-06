-module(cryptoapis_list_unconfirmed_tokens_transfers_by_address_ri).

-export([encode/1]).

-export_type([cryptoapis_list_unconfirmed_tokens_transfers_by_address_ri/0]).

-type cryptoapis_list_unconfirmed_tokens_transfers_by_address_ri() ::
    #{ 'contractAddress' := binary(),
       'recipientAddress' := binary(),
       'senderAddress' := binary(),
       'tokenDecimals' := integer(),
       'tokenId' => binary(),
       'tokenName' := binary(),
       'tokenSymbol' := binary(),
       'tokenType' := binary(),
       'tokensAmount' => binary(),
       'transactionHash' := binary(),
       'transactionTimestamp' := integer()
     }.

encode(#{ 'contractAddress' := ContractAddress,
          'recipientAddress' := RecipientAddress,
          'senderAddress' := SenderAddress,
          'tokenDecimals' := TokenDecimals,
          'tokenId' := TokenId,
          'tokenName' := TokenName,
          'tokenSymbol' := TokenSymbol,
          'tokenType' := TokenType,
          'tokensAmount' := TokensAmount,
          'transactionHash' := TransactionHash,
          'transactionTimestamp' := TransactionTimestamp
        }) ->
    #{ 'contractAddress' => ContractAddress,
       'recipientAddress' => RecipientAddress,
       'senderAddress' => SenderAddress,
       'tokenDecimals' => TokenDecimals,
       'tokenId' => TokenId,
       'tokenName' => TokenName,
       'tokenSymbol' => TokenSymbol,
       'tokenType' => TokenType,
       'tokensAmount' => TokensAmount,
       'transactionHash' => TransactionHash,
       'transactionTimestamp' => TransactionTimestamp
     }.
