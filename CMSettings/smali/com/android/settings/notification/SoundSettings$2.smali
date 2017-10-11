.class Lcom/cyanogenmod/settings/notification/SoundSettings$2;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cyanogenmod/settings/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/cyanogenmod/settings/notification/SoundSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/notification/SoundSettings;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/cyanogenmod/settings/notification/SoundSettings$2;->this$0:Lcom/cyanogenmod/settings/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 393
    iget-object v4, p0, Lcom/cyanogenmod/settings/notification/SoundSettings$2;->this$0:Lcom/cyanogenmod/settings/notification/SoundSettings;

    invoke-static {v4}, Lcom/cyanogenmod/settings/notification/SoundSettings;->-get4(Lcom/cyanogenmod/settings/notification/SoundSettings;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 394
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v2, "summaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v4, p0, Lcom/cyanogenmod/settings/notification/SoundSettings$2;->this$0:Lcom/cyanogenmod/settings/notification/SoundSettings;

    invoke-static {v4}, Lcom/cyanogenmod/settings/notification/SoundSettings;->-get4(Lcom/cyanogenmod/settings/notification/SoundSettings;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "preference$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyanogenmod/settings/DefaultRingtonePreference;

    .line 397
    .local v0, "preference":Lcom/cyanogenmod/settings/DefaultRingtonePreference;
    iget-object v4, p0, Lcom/cyanogenmod/settings/notification/SoundSettings$2;->this$0:Lcom/cyanogenmod/settings/notification/SoundSettings;

    invoke-static {v4}, Lcom/cyanogenmod/settings/notification/SoundSettings;->-get0(Lcom/cyanogenmod/settings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/DefaultRingtonePreference;->getSubId()I

    move-result v5

    .line 396
    invoke-static {v4, v6, v5}, Lcom/cyanogenmod/settings/notification/SoundSettings;->-wrap1(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 398
    .local v3, "summary":Ljava/lang/CharSequence;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 400
    .end local v0    # "preference":Lcom/cyanogenmod/settings/DefaultRingtonePreference;
    .end local v3    # "summary":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 401
    iget-object v4, p0, Lcom/cyanogenmod/settings/notification/SoundSettings$2;->this$0:Lcom/cyanogenmod/settings/notification/SoundSettings;

    invoke-static {v4}, Lcom/cyanogenmod/settings/notification/SoundSettings;->-get1(Lcom/cyanogenmod/settings/notification/SoundSettings;)Lcom/cyanogenmod/settings/notification/SoundSettings$H;

    move-result-object v4

    invoke-virtual {v4, v6, v2}, Lcom/cyanogenmod/settings/notification/SoundSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 404
    .end local v1    # "preference$iterator":Ljava/util/Iterator;
    .end local v2    # "summaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_1
    iget-object v4, p0, Lcom/cyanogenmod/settings/notification/SoundSettings$2;->this$0:Lcom/cyanogenmod/settings/notification/SoundSettings;

    invoke-static {v4}, Lcom/cyanogenmod/settings/notification/SoundSettings;->-get3(Lcom/cyanogenmod/settings/notification/SoundSettings;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 406
    iget-object v4, p0, Lcom/cyanogenmod/settings/notification/SoundSettings$2;->this$0:Lcom/cyanogenmod/settings/notification/SoundSettings;

    invoke-static {v4}, Lcom/cyanogenmod/settings/notification/SoundSettings;->-get0(Lcom/cyanogenmod/settings/notification/SoundSettings;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, -0x1

    .line 405
    invoke-static {v4, v7, v5}, Lcom/cyanogenmod/settings/notification/SoundSettings;->-wrap1(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 407
    .restart local v3    # "summary":Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    .line 408
    iget-object v4, p0, Lcom/cyanogenmod/settings/notification/SoundSettings$2;->this$0:Lcom/cyanogenmod/settings/notification/SoundSettings;

    invoke-static {v4}, Lcom/cyanogenmod/settings/notification/SoundSettings;->-get1(Lcom/cyanogenmod/settings/notification/SoundSettings;)Lcom/cyanogenmod/settings/notification/SoundSettings$H;

    move-result-object v4

    invoke-virtual {v4, v7, v3}, Lcom/cyanogenmod/settings/notification/SoundSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 392
    .end local v3    # "summary":Ljava/lang/CharSequence;
    :cond_2
    return-void
.end method
