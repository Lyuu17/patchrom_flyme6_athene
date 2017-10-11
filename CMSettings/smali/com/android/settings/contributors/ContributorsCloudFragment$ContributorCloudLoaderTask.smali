.class Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;
.super Landroid/os/AsyncTask;
.source "ContributorsCloudFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContributorCloudLoaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mNavigate:Z

.field private final mNotify:Z

.field private mViewInfo:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;

.field final synthetic this$0:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;


# direct methods
.method public constructor <init>(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;
    .param p2, "notify"    # Z
    .param p3, "navigate"    # Z

    .prologue
    .line 156
    iput-object p1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 157
    iput-boolean p2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mNotify:Z

    .line 158
    iput-boolean p3, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mNavigate:Z

    .line 156
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    iget-object v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    invoke-virtual {v2}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->-wrap1(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;Landroid/content/Context;)V

    .line 170
    iget-object v1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    iget-object v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    invoke-virtual {v2}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->-wrap2(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;Landroid/content/Context;)V

    .line 171
    iget-object v1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    iget-object v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    invoke-virtual {v2}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    invoke-static {v3}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->-get2(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->-wrap0(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;Landroid/content/Context;I)Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;

    .line 172
    iget-object v1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;

    iget-object v1, v1, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 173
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "ContributorsCloud"

    const-string/jumbo v2, "Failed to generate cloud bitmap"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 167
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    invoke-static {v0}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->-wrap4(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;)V

    .line 207
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 184
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    invoke-static {v0}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->-get0(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;

    iget-object v1, v1, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 186
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    invoke-static {v0}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->-get3(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;)Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;->update()V

    .line 187
    iget-boolean v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mNotify:Z

    if-eqz v0, :cond_0

    .line 188
    iget-boolean v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mNavigate:Z

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    iget-object v1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;

    iget v1, v1, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;->mFocusX:F

    iget-object v2, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;

    iget v2, v2, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;->mFocusY:F

    invoke-static {v0, v1, v2}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->-wrap5(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;FF)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    invoke-static {v0, v2, v2}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->-wrap5(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;FF)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    invoke-static {v0}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->-get0(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 196
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    invoke-static {v0}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->-get3(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;)Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;->update()V

    .line 197
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;

    iget-object v0, v0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mViewInfo:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;

    iget-object v0, v0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ViewInfo;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 200
    :cond_3
    iget-boolean v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->mNotify:Z

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    invoke-static {v0}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->-wrap4(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 183
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment$ContributorCloudLoaderTask;->this$0:Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;

    invoke-static {v0}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;->-get1(Lcom/cyanogenmod/settings/contributors/ContributorsCloudFragment;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 162
    return-void
.end method
