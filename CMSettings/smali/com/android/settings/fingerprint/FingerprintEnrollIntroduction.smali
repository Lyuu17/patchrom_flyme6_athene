.class public Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollIntroduction;
.super Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollIntroduction.java"


# instance fields
.field private mHasPassword:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollBase;-><init>()V

    return-void
.end method

.method private launchFingerprintHelp()V
    .locals 3

    .prologue
    .line 102
    const v1, 0x7f0c0cd8

    invoke-virtual {p0, v1}, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollIntroduction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollIntroduction;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {p0, v1, v2}, Lcom/cyanogenmod/settings/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 103
    .local v0, "helpIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollIntroduction;->startActivity(Landroid/content/Intent;)V

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method protected getFindSensorIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 110
    const/16 v0, 0xf3

    return v0
.end method

.method protected getOnboardIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollOnboard;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 81
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 82
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollIntroduction;->setResult(I)V

    .line 83
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollIntroduction;->finish()V

    .line 80
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollBase;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f13004f

    if-ne v0, v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollIntroduction;->finish()V

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f13011b

    if-ne v0, v1, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollIntroduction;->launchFingerprintHelp()V

    .line 97
    :cond_1
    invoke-super {p0, p1}, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollBase;->onClick(Landroid/view/View;)V

    .line 90
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-super {p0, p1}, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v3, 0x7f04007a

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollIntroduction;->setContentView(I)V

    .line 43
    const v3, 0x7f0c0510

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollIntroduction;->setHeaderText(I)V

    .line 44
    const v3, 0x7f13004f

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v3, 0x7f13011b

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "learnMoreButton":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v3, 0x7f0c0cd8

    invoke-virtual {p0, v3}, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollIntroduction;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollIntroduction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "device_provisioned"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 50
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :cond_1
    new-instance v3, Lcom/cyanogenmod/settings/ChooseLockSettingsHelper;

    invoke-direct {v3, p0}, Lcom/cyanogenmod/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3}, Lcom/cyanogenmod/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    .line 54
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 53
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    .line 55
    .local v1, "passwordQuality":I
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollIntroduction;->mHasPassword:Z

    .line 40
    return-void
.end method

.method protected onNextButtonClick()V
    .locals 2

    .prologue
    .line 61
    iget-boolean v1, p0, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollIntroduction;->mHasPassword:Z

    if-nez v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollIntroduction;->getOnboardIntent()Landroid/content/Intent;

    move-result-object v0

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    .line 59
    return-void

    .line 66
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/fingerprint/FingerprintEnrollIntroduction;->getFindSensorIntent()Landroid/content/Intent;

    move-result-object v0

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method
