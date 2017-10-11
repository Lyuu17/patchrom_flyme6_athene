.class Lcom/cyanogenmod/settings/CryptKeeper$2;
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
    .line 164
    iput-object p1, p0, Lcom/cyanogenmod/settings/CryptKeeper$2;->this$0:Lcom/cyanogenmod/settings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/cyanogenmod/settings/CryptKeeper$2;->this$0:Lcom/cyanogenmod/settings/CryptKeeper;

    invoke-static {v0}, Lcom/cyanogenmod/settings/CryptKeeper;->-get3(Lcom/cyanogenmod/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 166
    return-void
.end method
