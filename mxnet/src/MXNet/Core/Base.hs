-----------------------------------------------------------
-- |
-- module:                      MXNet.Core.Base
-- copyright:                   (c) 2016 Tao He
-- license:                     MIT
-- maintainer:                  sighingnow@gmail.com
--
-- Interfaces in core module of MXNet.
--
module MXNet.Core.Base (
      -- * Data type definitions
      -- ** Type alias
      MXUInt
    , MXFloat
      -- ** Handlers and Creators
    , NDArrayHandle
    , FunctionHandle
    , AtomicSymbolCreator
    , SymbolHandle
    , AtomicSymbolHandle
    , ExecutorHandle
    , DataIterCreator
    , DataIterHandle
    , KVStoreHandle
    , RecordIOHandle
    , RtcHandle
      -- ** Callback types
    , ExecutorMonitorCallback
    , CustomOpPropCreator
    , MXKVStoreUpdater
    , MXKVStoreServerController
      -- * Error handling.
    , mxGetLastError
      -- * Global State setups
    , mxRandomSeed
    , mxNotifyShutdown
    , mxSetProfilerConfig
    , mxSetProfilerState
    , mxDumpProfile
      -- * NDArray creation and deletion
    , mxNDArrayCreateNone
    , mxNDArrayCreate
    , mxNDArrayCreateEx
    , mxNDArrayLoadFromRawBytes
    , mxNDArraySaveRawBytes
    , mxNDArraySave
    , mxNDArrayLoad
    , mxNDArraySyncCopyFromCPU
    , mxNDArraySyncCopyToCPU
    , mxNDArrayWaitToRead
    , mxNDArrayWaitToWrite
    , mxNDArrayWaitAll
    , mxNDArrayFree
    , mxNDArraySlice
    , mxNDArrayAt
    , mxNDArrayReshape
    , mxNDArrayGetShape
    , mxNDArrayGetData
    , mxNDArrayGetDType
    , mxNDArrayGetContext
      -- * Functions on NDArray
    , mxListFunctions
    , mxGetFunction
    , mxFuncGetInfo
    , mxFuncDescribe
    , mxFuncInvoke
    , mxFuncInvokeEx
    , mxImperativeInvoke
      -- * Symbolic configuration generation
    , mxSymbolListAtomicSymbolCreators
    , mxSymbolGetAtomicSymbolName
    , mxSymbolGetAtomicSymbolInfo
    , mxSymbolCreateAtomicSymbol
    , mxSymbolCreateVariable
    , mxSymbolCreateGroup
    , mxSymbolCreateFromFile
    , mxSymbolCreateFromJSON
    , mxSymbolSaveToFile
    , mxSymbolSaveToJSON
    , mxSymbolFree
    , mxSymbolCopy
    , mxSymbolPrint
    , mxSymbolGetName
    , mxSymbolGetAttr
    , mxSymbolSetAttr
    , mxSymbolListAttr
    , mxSymbolListAttrShallow
    , mxSymbolListArguments
    , mxSymbolListOutputs
    , mxSymbolGetInternals
    , mxSymbolGetOutput
    , mxSymbolListAuxiliaryStates
    , mxSymbolCompose
    , mxSymbolGrad
    , mxSymbolInferShape
    , mxSymbolInferShapePartial
    , mxSymbolInferType
      -- * Executor interface
    , mxExecutorFree
    , mxExecutorPrint
    , mxExecutorForward
    , mxExecutorBackward
    , mxExecutorOutputs
    , mxExecutorBind
    , mxExecutorBindX
    , mxExecutorBindEX
    , mxExecutorSetMonitorCallback
      -- * IO Interface
    , mxListDataIters
    , mxDataIterCreateIter
    , mxDataIterGetIterInfo
    , mxDataIterFree
    , mxDataIterNext
    , mxDataIterBeforeFirst
    , mxDataIterGetData
    , mxDataIterGetIndex
    , mxDataIterGetPadNum
    , mxDataIterGetLabel
      -- * Basic KVStore interface
    , mxInitPSEnv
    , mxKVStoreCreate
    , mxKVStoreFree
    , mxKVStoreInit
    , mxKVStorePush
    , mxKVStorePull
    , mxKVStoreSetUpdater
    , mxKVStoreGetType
      -- * Advanced KVStore for multi-machines
    , mxKVStoreGetRank
    , mxKVStoreGetGroupSize
    , mxKVStoreIsWorkerNode
    , mxKVStoreIsServerNode
    , mxKVStoreIsSchedulerNode
    , mxKVStoreBarrier
    , mxKVStoreSetBarrierBeforeExit
    , mxKVStoreRunServer
    , mxKVStoreSendCommmandToServers
    , mxKVStoreGetNumDeadNode
    , mxRecordIOWriterCreate
    , mxRecordIOWriterFree
    , mxRecordIOWriterWriteRecord
    , mxRecordIOWriterTell
    , mxRecordIOReaderCreate
    , mxRecordIOReaderFree
    , mxRecordIOReaderReadRecord
    , mxRecordIOReaderSeek
    , mxRtcCreate
    , mxRtcPush
    , mxRtcFree
    , mxCustomOpRegister
    ) where

import MXNet.Core.Internal.Types.Raw
import MXNet.Core.Base.Internal.Raw
