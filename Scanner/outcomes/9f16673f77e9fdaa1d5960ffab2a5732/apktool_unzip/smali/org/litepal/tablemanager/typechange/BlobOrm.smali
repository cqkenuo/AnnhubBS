.class public Lorg/litepal/tablemanager/typechange/BlobOrm;
.super Lorg/litepal/tablemanager/typechange/OrmChange;
.source "BlobOrm.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lorg/litepal/tablemanager/typechange/OrmChange;-><init>()V

    return-void
.end method


# virtual methods
.method public object2Relation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "fieldType"    # Ljava/lang/String;

    .line 17
    if-eqz p1, :cond_2

    .line 18
    const-string v0, "byte"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "java.lang.Byte"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const-string v0, "blob"

    return-object v0

    .line 17
    :cond_2
    nop

    .line 22
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
