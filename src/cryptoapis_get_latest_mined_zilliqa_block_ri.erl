-module(cryptoapis_get_latest_mined_zilliqa_block_ri).

-export([encode/1]).

-export_type([cryptoapis_get_latest_mined_zilliqa_block_ri/0]).

-type cryptoapis_get_latest_mined_zilliqa_block_ri() ::
    #{ 'blockHash' := binary(),
       'blockHeight' := integer(),
       'difficulty' := binary(),
       'dsBlock' := integer(),
       'dsDifficulty' := binary(),
       'dsLeader' := binary(),
       'gasLimit' := integer(),
       'gasUsed' := integer(),
       'microBlocks' := list(),
       'previousBlockHash' := binary(),
       'timestamp' := integer(),
       'transactionsCount' := integer()
     }.

encode(#{ 'blockHash' := BlockHash,
          'blockHeight' := BlockHeight,
          'difficulty' := Difficulty,
          'dsBlock' := DsBlock,
          'dsDifficulty' := DsDifficulty,
          'dsLeader' := DsLeader,
          'gasLimit' := GasLimit,
          'gasUsed' := GasUsed,
          'microBlocks' := MicroBlocks,
          'previousBlockHash' := PreviousBlockHash,
          'timestamp' := Timestamp,
          'transactionsCount' := TransactionsCount
        }) ->
    #{ 'blockHash' => BlockHash,
       'blockHeight' => BlockHeight,
       'difficulty' => Difficulty,
       'dsBlock' => DsBlock,
       'dsDifficulty' => DsDifficulty,
       'dsLeader' => DsLeader,
       'gasLimit' => GasLimit,
       'gasUsed' => GasUsed,
       'microBlocks' => MicroBlocks,
       'previousBlockHash' => PreviousBlockHash,
       'timestamp' => Timestamp,
       'transactionsCount' => TransactionsCount
     }.
