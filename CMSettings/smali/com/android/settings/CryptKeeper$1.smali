.class Lcom/cyanogenmod/settings/CryptKeeper$1;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/CryptKeeper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/CryptKeeper;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/cyanogenmod/settings/CryptKeeper$1;->this$0:Lcom/cyanogenmod/settings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/cyanogenmod/settings/CryptKeeper$1;->this$0:Lcom/cyanogenmod/settings/CryptKeeper;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyanogenmod/settings/CryptKeeper;->-wrap4(Lcom/cyanogenmod/settings/CryptKeeper;Ljava/lang/Integer;)V

    .line 156
    return-void
.end method
