.class public final Lorg/litepal/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field public static final DEBUG:I = 0x2

.field public static final ERROR:I = 0x5

.field public static level:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const/4 v0, 0x5

    sput v0, Lorg/litepal/util/LogUtil;->level:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 30
    sget v0, Lorg/litepal/util/LogUtil;->level:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 30
    :cond_0
    nop

    .line 33
    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 36
    sget v0, Lorg/litepal/util/LogUtil;->level:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 37
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 36
    :cond_0
    nop

    .line 39
    :goto_0
    return-void
.end method
