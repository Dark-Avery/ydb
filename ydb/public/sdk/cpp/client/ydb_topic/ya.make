LIBRARY()

GENERATE_ENUM_SERIALIZATION(ydb/public/sdk/cpp/client/ydb_topic/topic.h)

SRCS(
    out.cpp
    proto_accessor.cpp
    topic.h
)

PEERDIR(
    ydb/public/sdk/cpp/client/ydb_topic/codecs

    library/cpp/retry
    ydb/public/sdk/cpp/client/ydb_topic/impl
    ydb/public/sdk/cpp/client/ydb_proto
    ydb/public/sdk/cpp/client/ydb_driver
    ydb/public/api/grpc
    ydb/public/api/grpc/draft
    ydb/public/api/protos
    ydb/public/sdk/cpp/client/ydb_table
)

END()

RECURSE_FOR_TESTS(
    ut
)
