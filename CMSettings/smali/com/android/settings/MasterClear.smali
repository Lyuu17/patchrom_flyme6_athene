.class public Lcom/cyanogenmod/settings/MasterClear;
.super Lcom/cyanogenmod/settings/InstrumentedFragment;
.source "MasterClear.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyanogenmod/settings/MasterClear$1;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field private mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mInternalStorage:Landroid/widget/CheckBox;

.field private mInternalStorageContainer:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/cyanogenmod/settings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get1(Lcom/cyanogenmod/settings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/cyanogenmod/settings/MasterClear;->mInternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/cyanogenmod/settings/MasterClear;I)Z
    .locals 1
    .param p1, "request"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/cyanogenmod/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/cyanogenmod/settings/MasterClear;)V
    .locals 0

    invoke-direct {p0}, Lcom/cyanogenmod/settings/MasterClear;->showFinalConfirmation()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/cyanogenmod/settings/InstrumentedFragment;-><init>()V

    .line 113
    new-instance v0, Lcom/cyanogenmod/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/cyanogenmod/settings/MasterClear$1;-><init>(Lcom/cyanogenmod/settings/MasterClear;)V

    iput-object v0, p0, Lcom/cyanogenmod/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    .line 58
    return-void
.end method

.method private establishInitialState()V
    .locals 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 135
    iget-object v3, p0, Lcom/cyanogenmod/settings/MasterClear;->mContentView:Landroid/view/View;

    const v7, 0x7f13013f

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/cyanogenmod/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    .line 136
    iget-object v3, p0, Lcom/cyanogenmod/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/cyanogenmod/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v3, p0, Lcom/cyanogenmod/settings/MasterClear;->mContentView:Landroid/view/View;

    const v7, 0x7f130141

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/cyanogenmod/settings/MasterClear;->mInternalStorage:Landroid/widget/CheckBox;

    .line 138
    iget-object v3, p0, Lcom/cyanogenmod/settings/MasterClear;->mContentView:Landroid/view/View;

    const v7, 0x7f130140

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/MasterClear;->mInternalStorageContainer:Landroid/view/View;

    .line 139
    iget-object v3, p0, Lcom/cyanogenmod/settings/MasterClear;->mContentView:Landroid/view/View;

    const v7, 0x7f13013d

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/cyanogenmod/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    .line 140
    iget-object v3, p0, Lcom/cyanogenmod/settings/MasterClear;->mContentView:Landroid/view/View;

    const v7, 0x7f13013e

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/cyanogenmod/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    .line 142
    const/4 v1, 0x0

    .line 152
    .local v1, "hasExternalStorage":Z
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 154
    iget-object v7, p0, Lcom/cyanogenmod/settings/MasterClear;->mInternalStorageContainer:Landroid/view/View;

    invoke-direct {p0}, Lcom/cyanogenmod/settings/MasterClear;->isExtStorageEncrypted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 155
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 154
    :goto_0
    invoke-virtual {v7, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 156
    iget-object v3, p0, Lcom/cyanogenmod/settings/MasterClear;->mInternalStorageContainer:Landroid/view/View;

    new-instance v7, Lcom/cyanogenmod/settings/MasterClear$2;

    invoke-direct {v7, p0}, Lcom/cyanogenmod/settings/MasterClear$2;-><init>(Lcom/cyanogenmod/settings/MasterClear;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v3, p0, Lcom/cyanogenmod/settings/MasterClear;->mInternalStorageContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 164
    iget-object v3, p0, Lcom/cyanogenmod/settings/MasterClear;->mInternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 165
    iget-object v3, p0, Lcom/cyanogenmod/settings/MasterClear;->mContentView:Landroid/view/View;

    .line 166
    const v5, 0x7f130143

    .line 165
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 168
    .local v2, "internalSummaryText":Landroid/widget/TextView;
    const v3, 0x7f0c037e

    .line 167
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 177
    .end local v2    # "internalSummaryText":Landroid/widget/TextView;
    :cond_0
    :goto_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 178
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "mounted"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 179
    .end local v1    # "hasExternalStorage":Z
    :goto_2
    iget-object v3, p0, Lcom/cyanogenmod/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    if-eqz v1, :cond_5

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v3, p0, Lcom/cyanogenmod/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v4, Lcom/cyanogenmod/settings/MasterClear$3;

    invoke-direct {v4, p0}, Lcom/cyanogenmod/settings/MasterClear$3;-><init>(Lcom/cyanogenmod/settings/MasterClear;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 188
    .local v0, "contentDescription":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/cyanogenmod/settings/MasterClear;->mInternalStorageContainer:Landroid/view/View;

    invoke-direct {p0, v3, v0}, Lcom/cyanogenmod/settings/MasterClear;->getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V

    .line 189
    iget-object v3, p0, Lcom/cyanogenmod/settings/MasterClear;->mInternalStorageContainer:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 134
    return-void

    .end local v0    # "contentDescription":Ljava/lang/StringBuffer;
    .restart local v1    # "hasExternalStorage":Z
    :cond_1
    move v3, v5

    .line 155
    goto :goto_0

    :cond_2
    move v3, v4

    .line 154
    goto :goto_0

    .line 172
    :cond_3
    iget-object v3, p0, Lcom/cyanogenmod/settings/MasterClear;->mInternalStorageContainer:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 177
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .end local v1    # "hasExternalStorage":Z
    :cond_5
    move v4, v6

    .line 179
    goto :goto_3
.end method

.method private getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "description"    # Ljava/lang/StringBuffer;

    .prologue
    .line 193
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v2, p1

    .line 194
    check-cast v2, Landroid/view/ViewGroup;

    .line 195
    .local v2, "vGroup":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 196
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 197
    .local v1, "nextChild":Landroid/view/View;
    invoke-direct {p0, v1, p2}, Lcom/cyanogenmod/settings/MasterClear;->getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "i":I
    .end local v1    # "nextChild":Landroid/view/View;
    .end local v2    # "vGroup":Landroid/view/ViewGroup;
    :cond_0
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    move-object v3, p1

    .line 200
    check-cast v3, Landroid/widget/TextView;

    .line 201
    .local v3, "vText":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 202
    const-string/jumbo v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    .end local v3    # "vText":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    .line 207
    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .param p1, "request"    # I

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/cyanogenmod/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/cyanogenmod/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/cyanogenmod/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 82
    const v2, 0x7f0c07f2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 81
    invoke-virtual {v1, p1, v2}, Lcom/cyanogenmod/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private showFinalConfirmation()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cyanogenmod/settings/MasterClear;->mInternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 104
    iget-object v1, p0, Lcom/cyanogenmod/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 103
    invoke-static {v0, v1}, Lcom/cyanogenmod/settings/MasterClearConfirm;->createInstance(ZZ)Lcom/cyanogenmod/settings/MasterClearConfirm;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/MasterClear;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 105
    const-class v2, Lcom/cyanogenmod/settings/MasterClearConfirm;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/cyanogenmod/settings/MasterClearConfirm;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 102
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 228
    const/16 v0, 0x42

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3}, Lcom/cyanogenmod/settings/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 89
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 90
    return-void

    .line 95
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 96
    invoke-direct {p0}, Lcom/cyanogenmod/settings/MasterClear;->showFinalConfirmation()V

    .line 86
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-direct {p0}, Lcom/cyanogenmod/settings/MasterClear;->establishInitialState()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 214
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/cyanogenmod/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 216
    const-string/jumbo v1, "no_factory_reset"

    .line 215
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    .line 214
    if-eqz v0, :cond_1

    .line 217
    :cond_0
    const v0, 0x7f04009a

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 220
    :cond_1
    const v0, 0x7f040098

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cyanogenmod/settings/MasterClear;->mContentView:Landroid/view/View;

    .line 222
    invoke-direct {p0}, Lcom/cyanogenmod/settings/MasterClear;->establishInitialState()V

    .line 223
    iget-object v0, p0, Lcom/cyanogenmod/settings/MasterClear;->mContentView:Landroid/view/View;

    return-object v0
.end method
