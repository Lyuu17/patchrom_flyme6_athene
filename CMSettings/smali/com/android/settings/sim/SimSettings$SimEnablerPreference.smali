.class Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;
.super Lcom/cyanogenmod/settings/sim/SimSettings$SimPreference;
.source "SimSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimEnablerPreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;,
        Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference$1;,
        Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference$2;,
        Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference$3;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCmdInProgress:Z

.field private mCurrentUiccProvisionState:Z

.field private mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

.field private mHandler:Landroid/os/Handler;

.field private mIsChecked:Z

.field private mSir:Landroid/telephony/SubscriptionInfo;

.field private mSwitch:Landroid/widget/CompoundButton;

.field private mSwitchVisibility:I

.field final synthetic this$0:Lcom/cyanogenmod/settings/sim/SimSettings;


# direct methods
.method static synthetic -get0(Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;)Lcom/android/internal/telephony/IExtTelephony;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    return-object v0
.end method

.method static synthetic -get1(Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mIsChecked:Z

    return v0
.end method

.method static synthetic -get3(Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;)Landroid/telephony/SubscriptionInfo;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic -set0(Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mCmdInProgress:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;II)V
    .locals 0
    .param p1, "result"    # I
    .param p2, "newProvisionedState"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->processSetUiccDone(II)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->sendUiccProvisioningRequest()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;II)V
    .locals 0
    .param p1, "dialogId"    # I
    .param p2, "msgId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->showProgressDialog()V

    return-void
.end method

.method public constructor <init>(Lcom/cyanogenmod/settings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V
    .locals 3
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/sim/SimSettings;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "sir"    # Landroid/telephony/SubscriptionInfo;
    .param p4, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 463
    iput-object p1, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/cyanogenmod/settings/sim/SimSettings;

    .line 464
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    .line 465
    const v1, 0x101008f

    .line 464
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/cyanogenmod/settings/sim/SimSettings$SimPreference;-><init>(Lcom/cyanogenmod/settings/sim/SimSettings;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 428
    const-string/jumbo v0, "SimEnablerPreference"

    iput-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->TAG:Ljava/lang/String;

    .line 453
    iput-boolean v2, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mCmdInProgress:Z

    .line 454
    iput v2, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSwitchVisibility:I

    .line 842
    new-instance v0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference$1;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference$1;-><init>(Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;)V

    iput-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 856
    new-instance v0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference$2;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference$2;-><init>(Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;)V

    iput-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 864
    new-instance v0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference$3;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference$3;-><init>(Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;)V

    iput-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;

    .line 466
    const-string/jumbo v0, "Contructor..Enter"

    invoke-direct {p0, v0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 467
    iput-object p2, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    .line 468
    iput p4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    .line 469
    iput-object p3, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 470
    iput-object p3, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    .line 471
    iget-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    const v0, 0x7f04003f

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->setWidgetLayoutResource(I)V

    .line 477
    :goto_0
    const-string/jumbo v0, "extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IExtTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    .line 479
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->setSwitchVisibility(I)V

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->setKey(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->update()V

    .line 463
    return-void

    .line 474
    :cond_0
    const v0, 0x7f040040

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->setWidgetLayoutResource(I)V

    goto :goto_0
.end method

.method private dismissDialog(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 831
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 833
    const/4 p1, 0x0

    .line 830
    .end local p1    # "dialog":Landroid/app/Dialog;
    :cond_0
    return-void
.end method

.method private getProvisionStatus(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 504
    iget-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/cyanogenmod/settings/sim/SimSettings;

    invoke-static {v0}, Lcom/cyanogenmod/settings/sim/SimSettings;->-get3(Lcom/cyanogenmod/settings/sim/SimSettings;)[I

    move-result-object v0

    aget v0, v0, p1

    return v0
.end method

.method private getProvisionedSlotId(Landroid/content/Context;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 800
    const/4 v0, -0x1

    .line 802
    .local v0, "activeSlotId":I
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/cyanogenmod/settings/sim/SimSettings;

    invoke-static {v4}, Lcom/cyanogenmod/settings/sim/SimSettings;->-get2(Lcom/cyanogenmod/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 803
    .local v3, "subInfoLists":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 804
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "subInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 805
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->getProvisionStatus(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 806
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    iget-object v5, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 807
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    goto :goto_0

    .line 810
    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "subInfo$iterator":Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method private declared-synchronized handleUserRequest()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    monitor-enter p0

    .line 663
    :try_start_0
    invoke-direct {p0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->isAirplaneModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 665
    const-string/jumbo v2, "APM is on, EXIT!"

    invoke-direct {p0, v2}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 666
    const/4 v2, 0x2

    const v3, 0x7f0c0357

    invoke-direct {p0, v2, v3}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 667
    return-void

    .line 669
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/cyanogenmod/settings/sim/SimSettings;

    invoke-static {v2}, Lcom/cyanogenmod/settings/sim/SimSettings;->-get1(Lcom/cyanogenmod/settings/sim/SimSettings;)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 670
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 672
    .local v1, "subId":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Call state for phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not idle, EXIT!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 675
    const/4 v2, 0x2

    const v3, 0x7f0c0358

    invoke-direct {p0, v2, v3}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 676
    return-void

    .line 669
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 680
    .end local v1    # "subId":[I
    :cond_2
    :try_start_2
    iget-boolean v2, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mIsChecked:Z

    if-nez v2, :cond_4

    .line 681
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->getNumOfSubsProvisioned()I

    move-result v2

    if-le v2, v4, :cond_3

    .line 682
    const-string/jumbo v2, "More than one sub is active, Deactivation possible."

    invoke-direct {p0, v2}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 683
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    .line 662
    return-void

    .line 685
    :cond_3
    :try_start_3
    const-string/jumbo v2, "Only one sub is active. Deactivation not possible."

    invoke-direct {p0, v2}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 686
    const/4 v2, 0x2

    const v3, 0x7f0c0359

    invoke-direct {p0, v2, v3}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->showAlertDialog(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 687
    return-void

    .line 690
    :cond_4
    :try_start_4
    const-string/jumbo v2, "Activate the sub"

    invoke-direct {p0, v2}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 691
    invoke-direct {p0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->sendUiccProvisioningRequest()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private hasCard()Z
    .locals 2

    .prologue
    .line 495
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 499
    iget-object v1, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 500
    const-string/jumbo v2, "airplane_mode_on"

    .line 499
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isCurrentSubValid()Z
    .locals 6

    .prologue
    .line 566
    const/4 v0, 0x0

    .line 567
    .local v0, "isSubValid":Z
    invoke-direct {p0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->hasCard()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 569
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/cyanogenmod/settings/sim/SimSettings;

    invoke-static {v4}, Lcom/cyanogenmod/settings/sim/SimSettings;->-get2(Lcom/cyanogenmod/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 570
    .local v3, "sirList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_2

    .line 571
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "sir$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 572
    .local v1, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v1, :cond_0

    iget v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 573
    iput-object v1, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    .line 577
    .end local v1    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    if-eqz v4, :cond_2

    .line 578
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    .line 577
    if-eqz v4, :cond_2

    .line 579
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    if-ltz v4, :cond_2

    .line 580
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->getProvisionStatus(I)I

    move-result v4

    if-ltz v4, :cond_2

    .line 581
    const/4 v0, 0x1

    .line 585
    .end local v2    # "sir$iterator":Ljava/util/Iterator;
    .end local v3    # "sirList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_2
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    return-void
.end method

.method private processSetUiccDone(II)V
    .locals 6
    .param p1, "result"    # I
    .param p2, "newProvisionedState"    # I

    .prologue
    const/16 v3, 0x7d0

    .line 740
    iget-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, v3}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->sendMessage(ILandroid/os/Handler;I)V

    .line 741
    iget-object v2, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->sendMessage(ILandroid/os/Handler;III)V

    .line 742
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mCmdInProgress:Z

    .line 739
    return-void
.end method

.method private sendMessage(ILandroid/os/Handler;I)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "delay"    # I

    .prologue
    .line 485
    invoke-virtual {p2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 486
    .local v0, "message":Landroid/os/Message;
    int-to-long v2, p3

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 484
    return-void
.end method

.method private sendMessage(ILandroid/os/Handler;III)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "delay"    # I
    .param p4, "arg1"    # I
    .param p5, "arg2"    # I

    .prologue
    .line 490
    invoke-virtual {p2, p1, p4, p5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 491
    .local v0, "message":Landroid/os/Message;
    int-to-long v2, p3

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 489
    return-void
.end method

.method private sendUiccProvisioningRequest()V
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 697
    return-void

    .line 699
    :cond_0
    new-instance v0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;-><init>(Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference$SimEnablerDisabler;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 695
    return-void
.end method

.method private setChecked(Z)V
    .locals 3
    .param p1, "uiccProvisionState"    # Z

    .prologue
    const/4 v2, 0x0

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setChecked: uiccProvisionState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "sir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 597
    iget-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 600
    iget-boolean v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mCmdInProgress:Z

    if-nez v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 604
    iput-boolean p1, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mCurrentUiccProvisionState:Z

    .line 595
    :cond_1
    return-void
.end method

.method private showAlertDialog(II)V
    .locals 10
    .param p1, "dialogId"    # I
    .param p2, "msgId"    # I

    .prologue
    const/4 v9, 0x0

    const v6, 0x7f0c0354

    const v8, 0x104000a

    const/4 v7, 0x0

    .line 747
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    if-nez v4, :cond_0

    const-string/jumbo v3, "SUB"

    .line 749
    .local v3, "title":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/cyanogenmod/settings/sim/SimSettings;->-get5()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 750
    invoke-static {}, Lcom/cyanogenmod/settings/sim/SimSettings;->-get6()Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 751
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 754
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 794
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-static {v4}, Lcom/cyanogenmod/settings/sim/SimSettings;->-set1(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 795
    invoke-static {}, Lcom/cyanogenmod/settings/sim/SimSettings;->-get5()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 796
    invoke-static {}, Lcom/cyanogenmod/settings/sim/SimSettings;->-get5()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 745
    return-void

    .line 747
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "title":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "title":Ljava/lang/String;
    goto :goto_0

    .line 757
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_0
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 758
    const v5, 0x7f10000a

    .line 757
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 759
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    .line 760
    iget-object v5, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    .line 759
    if-ne v4, v5, :cond_1

    .line 761
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 763
    iget-object v6, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->getProvisionedSlotId(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 762
    const v6, 0x7f0c0356

    .line 761
    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 767
    .local v1, "message":Ljava/lang/String;
    :goto_2
    const v4, 0x7f0c0355

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 771
    :goto_3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 772
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 773
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    const v5, 0x1040009

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 774
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mDialogCanceListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 765
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_2

    .line 769
    .end local v1    # "message":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_3

    .line 778
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_1
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 779
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v8, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 780
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 784
    :pswitch_2
    iget-boolean v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mCurrentUiccProvisionState:Z

    if-eqz v4, :cond_3

    .line 785
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0c035c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 787
    .local v2, "msg":Ljava/lang/String;
    :goto_4
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 788
    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 786
    .end local v2    # "msg":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    const v5, 0x7f0c035e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_4

    .line 754
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showProgressDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 814
    iget-object v2, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    if-nez v2, :cond_0

    const-string/jumbo v1, "SUB"

    .line 816
    .local v1, "title":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mIsChecked:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0c035a

    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/cyanogenmod/settings/sim/SimSettings;->-get6()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 819
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/cyanogenmod/settings/sim/SimSettings;->-set2(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 820
    invoke-static {}, Lcom/cyanogenmod/settings/sim/SimSettings;->-get6()Landroid/app/ProgressDialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 821
    invoke-static {}, Lcom/cyanogenmod/settings/sim/SimSettings;->-get6()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 822
    invoke-static {}, Lcom/cyanogenmod/settings/sim/SimSettings;->-get6()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 823
    invoke-static {}, Lcom/cyanogenmod/settings/sim/SimSettings;->-get6()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 824
    invoke-static {}, Lcom/cyanogenmod/settings/sim/SimSettings;->-get6()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 825
    invoke-static {}, Lcom/cyanogenmod/settings/sim/SimSettings;->-get6()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 827
    iget-object v2, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    const/16 v4, 0x7530

    invoke-direct {p0, v3, v2, v4}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->sendMessage(ILandroid/os/Handler;I)V

    .line 813
    return-void

    .line 814
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "title":Ljava/lang/String;
    goto :goto_0

    .line 817
    :cond_1
    const v2, 0x7f0c035b

    goto :goto_1
.end method

.method private updateSummary()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 609
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 611
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->getProvisionStatus(I)I

    move-result v4

    if-ne v4, v7, :cond_1

    const/4 v1, 0x1

    .line 612
    .local v1, "isActivated":Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSummary: subId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " isActivated = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 613
    const-string/jumbo v5, " slot id = "

    .line 612
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 613
    iget v5, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    .line 612
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 615
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    if-nez v4, :cond_2

    const-string/jumbo v0, "SIM"

    .line 616
    .local v0, "displayName":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_3

    .line 617
    move-object v3, v0

    .line 618
    .local v3, "summary":Ljava/lang/String;
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 619
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 626
    :cond_0
    :goto_2
    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 627
    invoke-direct {p0, v1}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->setChecked(Z)V

    .line 608
    return-void

    .line 611
    .end local v0    # "displayName":Ljava/lang/String;
    .end local v1    # "isActivated":Z
    .end local v3    # "summary":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isActivated":Z
    goto :goto_0

    .line 615
    :cond_2
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0    # "displayName":Ljava/lang/String;
    goto :goto_1

    .line 622
    :cond_3
    iget-object v5, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v6, v4

    .line 623
    invoke-direct {p0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->hasCard()Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f0c0352

    :goto_3
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    .line 622
    const v4, 0x7f0c0351

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "summary":Ljava/lang/String;
    goto :goto_2

    .line 623
    .end local v3    # "summary":Ljava/lang/String;
    :cond_4
    const v4, 0x7f0c0353

    goto :goto_3
.end method


# virtual methods
.method public cleanUpPendingDialogs()V
    .locals 1

    .prologue
    .line 838
    invoke-static {}, Lcom/cyanogenmod/settings/sim/SimSettings;->-get6()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 839
    invoke-static {}, Lcom/cyanogenmod/settings/sim/SimSettings;->-get5()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->dismissDialog(Landroid/app/Dialog;)V

    .line 837
    return-void
.end method

.method public getNumOfSubsProvisioned()I
    .locals 6

    .prologue
    .line 637
    const/4 v0, 0x0

    .line 639
    .local v0, "activeSubInfoCount":I
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/cyanogenmod/settings/sim/SimSettings;

    invoke-static {v4}, Lcom/cyanogenmod/settings/sim/SimSettings;->-get2(Lcom/cyanogenmod/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 640
    .local v3, "subInfoLists":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 641
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "subInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 642
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->getProvisionStatus(I)I

    move-result v4

    .line 643
    const/4 v5, 0x1

    .line 642
    if-ne v4, v5, :cond_0

    .line 643
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 646
    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "subInfo$iterator":Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 509
    invoke-super {p0, p1}, Lcom/cyanogenmod/settings/sim/SimSettings$SimPreference;->onBindView(Landroid/view/View;)V

    .line 510
    const-string/jumbo v0, "onBindView...."

    invoke-direct {p0, v0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 511
    const v0, 0x7f130083

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    .line 512
    iget-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 513
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->update()V

    .line 515
    iget-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    iget v2, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSwitchVisibility:I

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f10001d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 525
    iget-object v2, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->isCurrentSubValid()Z

    move-result v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 508
    :goto_1
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSwitch:Landroid/widget/CompoundButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_1

    :cond_1
    move v0, v1

    .line 525
    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 650
    iput-boolean p2, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mIsChecked:Z

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 653
    invoke-direct {p0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->handleUserRequest()V

    .line 649
    return-void
.end method

.method public setSwitchVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 589
    iput p1, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSwitchVisibility:I

    .line 588
    return-void
.end method

.method public update()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 531
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 532
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 535
    :try_start_0
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/cyanogenmod/settings/sim/SimSettings;

    invoke-static {v4}, Lcom/cyanogenmod/settings/sim/SimSettings;->-get3(Lcom/cyanogenmod/settings/sim/SimSettings;)[I

    move-result-object v4

    iget v5, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    .line 536
    iget-object v6, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mExtTelephony:Lcom/android/internal/telephony/IExtTelephony;

    iget v7, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/IExtTelephony;->getCurrentUiccCardProvisioningStatus(I)I

    move-result v6

    .line 535
    aput v6, v4, v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_0
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/cyanogenmod/settings/sim/SimSettings;

    invoke-static {v4}, Lcom/cyanogenmod/settings/sim/SimSettings;->-get3(Lcom/cyanogenmod/settings/sim/SimSettings;)[I

    move-result-object v4

    iget v5, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    aget v4, v4, v5

    if-ne v4, v8, :cond_0

    .line 546
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/cyanogenmod/settings/sim/SimSettings;

    invoke-static {v4}, Lcom/cyanogenmod/settings/sim/SimSettings;->-get3(Lcom/cyanogenmod/settings/sim/SimSettings;)[I

    move-result-object v4

    iget v5, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    aput v9, v4, v5

    .line 549
    :cond_0
    invoke-direct {p0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->isCurrentSubValid()Z

    move-result v2

    .line 550
    .local v2, "isSubValid":Z
    invoke-virtual {p0, v2}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->setEnabled(Z)V

    .line 552
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update: isSubValid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " provision status["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 553
    iget v5, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    .line 552
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 553
    const-string/jumbo v5, "] = "

    .line 552
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 553
    iget-object v5, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/cyanogenmod/settings/sim/SimSettings;

    invoke-static {v5}, Lcom/cyanogenmod/settings/sim/SimSettings;->-get3(Lcom/cyanogenmod/settings/sim/SimSettings;)[I

    move-result-object v5

    iget v6, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    aget v5, v5, v6

    .line 552
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->logd(Ljava/lang/String;)V

    .line 554
    new-array v4, v9, [Ljava/lang/Object;

    iget v5, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f0c0d10

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 555
    if-eqz v2, :cond_1

    .line 556
    invoke-direct {p0}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->updateSummary()V

    .line 557
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSir:Landroid/telephony/SubscriptionInfo;

    iget-object v6, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v4}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 530
    :goto_1
    return-void

    .line 540
    .end local v2    # "isSubValid":Z
    :catch_0
    move-exception v1

    .line 541
    .local v1, "ex":Ljava/lang/NullPointerException;
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/cyanogenmod/settings/sim/SimSettings;

    invoke-static {v4}, Lcom/cyanogenmod/settings/sim/SimSettings;->-get3(Lcom/cyanogenmod/settings/sim/SimSettings;)[I

    move-result-object v4

    iget v5, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    aput v8, v4, v5

    .line 542
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to get pref, slotId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 537
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 538
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->this$0:Lcom/cyanogenmod/settings/sim/SimSettings;

    invoke-static {v4}, Lcom/cyanogenmod/settings/sim/SimSettings;->-get3(Lcom/cyanogenmod/settings/sim/SimSettings;)[I

    move-result-object v4

    iget v5, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    aput v8, v4, v5

    .line 539
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to get pref, slotId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 559
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v2    # "isSubValid":Z
    :cond_1
    const v4, 0x7f0c0d11

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/cyanogenmod/settings/sim/SimSettings$SimEnablerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
