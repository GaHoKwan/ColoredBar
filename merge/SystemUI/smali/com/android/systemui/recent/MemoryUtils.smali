.class public Lcom/android/systemui/recent/MemoryUtils;
.super Ljava/lang/Object;
.source "MemoryUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MemoryUtils"

.field private static final MEMINFO_FILE:Ljava/lang/String; = "/proc/meminfo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMemory(Landroid/content/Context;)Lcom/android/systemui/recent/MemoryInfo;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const-wide/16 v2, 0x0

    .line 22
    .local v2, "initial_memory":J
    new-instance v6, Lcom/android/systemui/recent/MemoryInfo;

    invoke-direct {v6}, Lcom/android/systemui/recent/MemoryInfo;-><init>()V

    .line 25
    .local v6, "memoryInfo":Lcom/android/systemui/recent/MemoryInfo;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string v7, "/proc/meminfo"

    invoke-direct {v5, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 26
    .local v5, "localFileReader":Ljava/io/FileReader;
    new-instance v4, Ljava/io/BufferedReader;

    .line 27
    const/16 v7, 0x2000

    .line 26
    invoke-direct {v4, v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 29
    .local v4, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "content":Ljava/lang/String;
    const-string v7, "\\s+"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "arrayOfString":[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    mul-int/lit16 v7, v7, 0x400

    int-to-long v2, v7

    .line 36
    invoke-static {p0, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 35
    iput-object v7, v6, Lcom/android/systemui/recent/MemoryInfo;->total:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "arrayOfString":[Ljava/lang/String;
    .end local v1    # "content":Ljava/lang/String;
    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "localFileReader":Ljava/io/FileReader;
    :goto_0
    return-object v6

    .line 75
    :catch_0
    move-exception v7

    goto :goto_0
.end method
