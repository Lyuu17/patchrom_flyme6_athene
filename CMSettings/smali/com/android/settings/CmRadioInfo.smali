.class public Lcom/cyanogenmod/settings/CmRadioInfo;
.super Landroid/app/Activity;
.source "CmRadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/settings/CmRadioInfo$1;,
        Lcom/cyanogenmod/settings/CmRadioInfo$2;,
        Lcom/cyanogenmod/settings/CmRadioInfo$3;,
        Lcom/cyanogenmod/settings/CmRadioInfo$4;,
        Lcom/cyanogenmod/settings/CmRadioInfo$5;,
        Lcom/cyanogenmod/settings/CmRadioInfo$6;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private adbRadioLog:Landroid/widget/Button;

.field private diagLog:Landroid/widget/Button;

.field mAdbRadioLogHandler:Landroid/view/View$OnClickListener;

.field mDiagLogHandler:Landroid/view/View$OnClickListener;

.field mMbnAutoLoadHandler:Landroid/view/View$OnClickListener;

.field mVolteAvailOvrHandler:Landroid/view/View$OnClickListener;

.field mVtAvailOvrHandler:Landroid/view/View$OnClickListener;

.field mWfcAvailOvrHandler:Landroid/view/View$OnClickListener;

.field private mbnAutoLoadButton:Landroid/widget/Button;

.field private volteAvailOvrButton:Landroid/widget/Button;

.field private vtAvailOvrButton:Landroid/widget/Button;

.field private wfcAvailOvrButton:Landroid/widget/Button;


# direct methods
.method static synthetic -wrap0(Lcom/cyanogenmod/settings/CmRadioInfo;)Z
    .locals 1

    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->isAdbRadioLog()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/cyanogenmod/settings/CmRadioInfo;)Z
    .locals 1

    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->isDiagLog()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/cyanogenmod/settings/CmRadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->updateVtAvailOvrState()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/cyanogenmod/settings/CmRadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->updateWfcAvailOvrState()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/cyanogenmod/settings/CmRadioInfo;)Z
    .locals 1

    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->isMbnAutoLoad()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/cyanogenmod/settings/CmRadioInfo;)Z
    .locals 1

    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->isVolteAvailOvr()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/cyanogenmod/settings/CmRadioInfo;)Z
    .locals 1

    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->isVtAvailOvr()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/cyanogenmod/settings/CmRadioInfo;)Z
    .locals 1

    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->isWfcAvailOvr()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/cyanogenmod/settings/CmRadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->updateAdbRadioLogState()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/cyanogenmod/settings/CmRadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->updateDiagLogState()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/cyanogenmod/settings/CmRadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->updateMbnAutoLoadState()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/cyanogenmod/settings/CmRadioInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->updateVolteAvailOvrState()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const-string/jumbo v0, "CmRadioInfo"

    iput-object v0, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->TAG:Ljava/lang/String;

    .line 92
    new-instance v0, Lcom/cyanogenmod/settings/CmRadioInfo$1;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/settings/CmRadioInfo$1;-><init>(Lcom/cyanogenmod/settings/CmRadioInfo;)V

    iput-object v0, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->mMbnAutoLoadHandler:Landroid/view/View$OnClickListener;

    .line 112
    new-instance v0, Lcom/cyanogenmod/settings/CmRadioInfo$2;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/settings/CmRadioInfo$2;-><init>(Lcom/cyanogenmod/settings/CmRadioInfo;)V

    iput-object v0, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->mVolteAvailOvrHandler:Landroid/view/View$OnClickListener;

    .line 133
    new-instance v0, Lcom/cyanogenmod/settings/CmRadioInfo$3;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/settings/CmRadioInfo$3;-><init>(Lcom/cyanogenmod/settings/CmRadioInfo;)V

    iput-object v0, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->mVtAvailOvrHandler:Landroid/view/View$OnClickListener;

    .line 153
    new-instance v0, Lcom/cyanogenmod/settings/CmRadioInfo$4;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/settings/CmRadioInfo$4;-><init>(Lcom/cyanogenmod/settings/CmRadioInfo;)V

    iput-object v0, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->mWfcAvailOvrHandler:Landroid/view/View$OnClickListener;

    .line 174
    new-instance v0, Lcom/cyanogenmod/settings/CmRadioInfo$5;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/settings/CmRadioInfo$5;-><init>(Lcom/cyanogenmod/settings/CmRadioInfo;)V

    iput-object v0, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->mAdbRadioLogHandler:Landroid/view/View$OnClickListener;

    .line 194
    new-instance v0, Lcom/cyanogenmod/settings/CmRadioInfo$6;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/settings/CmRadioInfo$6;-><init>(Lcom/cyanogenmod/settings/CmRadioInfo;)V

    iput-object v0, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->mDiagLogHandler:Landroid/view/View$OnClickListener;

    .line 27
    return-void
.end method

.method private isAdbRadioLog()Z
    .locals 2

    .prologue
    .line 183
    const-string/jumbo v0, "persist.radio.adb_log_on"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isDiagLog()Z
    .locals 2

    .prologue
    .line 203
    const-string/jumbo v0, "persist.radio.diag_log_on"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isMbnAutoLoad()Z
    .locals 2

    .prologue
    .line 101
    const-string/jumbo v0, "persist.radio.sw_mbn_update"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isVolteAvailOvr()Z
    .locals 2

    .prologue
    .line 122
    const-string/jumbo v0, "persist.dbg.volte_avail_ovr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isVtAvailOvr()Z
    .locals 2

    .prologue
    .line 142
    const-string/jumbo v0, "persist.dbg.vt_avail_ovr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isWfcAvailOvr()Z
    .locals 2

    .prologue
    .line 163
    const-string/jumbo v0, "persist.dbg.wfc_avail_ovr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 215
    const-string/jumbo v0, "CmRadioInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[Phone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void
.end method

.method private updateAdbRadioLogState()V
    .locals 3

    .prologue
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAdbRadioLogState isAdbRadioLog()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->isAdbRadioLog()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cyanogenmod/settings/CmRadioInfo;->log(Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->isAdbRadioLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    const v1, 0x7f0c03d1

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/CmRadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->adbRadioLog:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void

    .line 190
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0c03d2

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/CmRadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "buttonText":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateDiagLogState()V
    .locals 3

    .prologue
    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDiagLogState isDiagLog()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->isDiagLog()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cyanogenmod/settings/CmRadioInfo;->log(Ljava/lang/String;)V

    .line 208
    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->isDiagLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    const v1, 0x7f0c03d3

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/CmRadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->diagLog:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 206
    return-void

    .line 210
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0c03d4

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/CmRadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "buttonText":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateMbnAutoLoadState()V
    .locals 3

    .prologue
    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMbnAutoLoadState isMbnAutoLoad()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->isMbnAutoLoad()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cyanogenmod/settings/CmRadioInfo;->log(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->isMbnAutoLoad()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const v1, 0x7f0c03c9

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/CmRadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->mbnAutoLoadButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void

    .line 108
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0c03ca

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/CmRadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "buttonText":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateVolteAvailOvrState()V
    .locals 3

    .prologue
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVolteAvailOvrState isVolteAvailOvr()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->isVolteAvailOvr()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cyanogenmod/settings/CmRadioInfo;->log(Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->isVolteAvailOvr()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const v1, 0x7f0c03cb

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/CmRadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->volteAvailOvrButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void

    .line 129
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0c03cc

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/CmRadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "buttonText":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateVtAvailOvrState()V
    .locals 3

    .prologue
    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVtAvailOvrState isVtAvailOvr()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->isVtAvailOvr()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cyanogenmod/settings/CmRadioInfo;->log(Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->isVtAvailOvr()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const v1, 0x7f0c03cd

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/CmRadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->vtAvailOvrButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-void

    .line 149
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0c03ce

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/CmRadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "buttonText":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateWfcAvailOvrState()V
    .locals 3

    .prologue
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWfcAvailOvrState isWfcAvailOvr()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->isWfcAvailOvr()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cyanogenmod/settings/CmRadioInfo;->log(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->isWfcAvailOvr()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    const v1, 0x7f0c03cf

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/CmRadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "buttonText":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->wfcAvailOvrButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 166
    return-void

    .line 170
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_0
    const v1, 0x7f0c03d0

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/CmRadioInfo;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "buttonText":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f040026

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/CmRadioInfo;->setContentView(I)V

    .line 52
    const v0, 0x7f130058

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/CmRadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->mbnAutoLoadButton:Landroid/widget/Button;

    .line 53
    iget-object v0, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->mbnAutoLoadButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->mMbnAutoLoadHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v0, 0x7f130059

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/CmRadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->volteAvailOvrButton:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->volteAvailOvrButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->mVolteAvailOvrHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f13005a

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/CmRadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->vtAvailOvrButton:Landroid/widget/Button;

    .line 59
    iget-object v0, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->vtAvailOvrButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->mVtAvailOvrHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f13005b

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/CmRadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->wfcAvailOvrButton:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->wfcAvailOvrButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->mWfcAvailOvrHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v0, 0x7f13005c

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/CmRadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->adbRadioLog:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->adbRadioLog:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->mAdbRadioLogHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f13005d

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/CmRadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->diagLog:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->diagLog:Landroid/widget/Button;

    iget-object v1, p0, Lcom/cyanogenmod/settings/CmRadioInfo;->mDiagLogHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 89
    const-string/jumbo v0, "onPause: cm radio info"

    invoke-direct {p0, v0}, Lcom/cyanogenmod/settings/CmRadioInfo;->log(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 75
    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->updateMbnAutoLoadState()V

    .line 76
    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->updateVolteAvailOvrState()V

    .line 77
    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->updateVtAvailOvrState()V

    .line 78
    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->updateWfcAvailOvrState()V

    .line 79
    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->updateAdbRadioLogState()V

    .line 80
    invoke-direct {p0}, Lcom/cyanogenmod/settings/CmRadioInfo;->updateDiagLogState()V

    .line 82
    const-string/jumbo v0, "onResume: update cm radio info"

    invoke-direct {p0, v0}, Lcom/cyanogenmod/settings/CmRadioInfo;->log(Ljava/lang/String;)V

    .line 72
    return-void
.end method
