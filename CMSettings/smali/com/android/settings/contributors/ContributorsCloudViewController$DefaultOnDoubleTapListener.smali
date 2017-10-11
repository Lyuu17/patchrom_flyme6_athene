.class public Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;
.super Ljava/lang/Object;
.source "ContributorsCloudViewController.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultOnDoubleTapListener"
.end annotation


# instance fields
.field private controller:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

.field final synthetic this$0:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;


# direct methods
.method public constructor <init>(Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;
    .param p2, "controller"    # Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->this$0:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-virtual {p0, p2}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->setController(Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;)V

    .line 145
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 188
    iget-object v4, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    if-nez v4, :cond_0

    .line 189
    return v5

    .line 191
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v4}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getScale()F

    move-result v1

    .line 192
    .local v1, "scale":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 193
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 195
    .local v3, "y":F
    iget-object v4, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->this$0:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-static {v4}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;->-get1(Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v4}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getMediumScale()F

    move-result v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1

    .line 196
    iget-object v4, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    iget-object v5, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v5}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getMediumScale()F

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v3, v6}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;->setScale(FFFZ)V

    .line 203
    :goto_0
    iget-object v4, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->this$0:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;->-set0(Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;Z)Z

    .line 207
    .end local v1    # "scale":F
    .end local v2    # "x":F
    .end local v3    # "y":F
    :goto_1
    return v7

    .line 197
    .restart local v1    # "scale":F
    .restart local v2    # "x":F
    .restart local v3    # "y":F
    :cond_1
    iget-object v4, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->this$0:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-static {v4}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;->-get1(Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v4}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getMediumScale()F

    move-result v4

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_2

    .line 198
    iget-object v4, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v4}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getMaximumScale()F

    move-result v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_2

    .line 199
    iget-object v4, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    iget-object v5, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v5}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getMaximumScale()F

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v3, v6}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;->setScale(FFFZ)V

    goto :goto_0

    .line 204
    .end local v1    # "scale":F
    .end local v2    # "x":F
    .end local v3    # "y":F
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_1

    .line 201
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v1    # "scale":F
    .restart local v2    # "x":F
    .restart local v3    # "y":F
    :cond_2
    iget-object v4, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    iget-object v5, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v5}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getMinimumScale()F

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v3, v6}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;->setScale(FFFZ)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    .line 155
    iget-object v6, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    if-nez v6, :cond_0

    .line 156
    return v9

    .line 158
    :cond_0
    iget-object v6, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v6}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 160
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v6}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getOnPhotoTapListener()Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnPhotoTapListener;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 161
    iget-object v6, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v6}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 163
    .local v0, "displayRect":Landroid/graphics/RectF;
    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 167
    .local v4, "y":F
    invoke-virtual {v0, v2, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 169
    iget v6, v0, Landroid/graphics/RectF;->left:F

    sub-float v6, v2, v6

    .line 170
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 169
    div-float v3, v6, v7

    .line 171
    .local v3, "xResult":F
    iget v6, v0, Landroid/graphics/RectF;->top:F

    sub-float v6, v4, v6

    .line 172
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v7

    .line 171
    div-float v5, v6, v7

    .line 174
    .local v5, "yResult":F
    iget-object v6, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v6}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getOnPhotoTapListener()Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnPhotoTapListener;

    move-result-object v6

    invoke-interface {v6, v1, v3, v5}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnPhotoTapListener;->onPhotoTap(Landroid/view/View;FF)V

    .line 175
    const/4 v6, 0x1

    return v6

    .line 179
    .end local v0    # "displayRect":Landroid/graphics/RectF;
    .end local v2    # "x":F
    .end local v3    # "xResult":F
    .end local v4    # "y":F
    .end local v5    # "yResult":F
    :cond_1
    iget-object v6, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v6}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getOnViewTapListener()Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnViewTapListener;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 180
    iget-object v6, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    invoke-virtual {v6}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;->getOnViewTapListener()Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnViewTapListener;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-interface {v6, v1, v7, v8}, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$OnViewTapListener;->onViewTap(Landroid/view/View;FF)V

    .line 183
    :cond_2
    return v9
.end method

.method public setController(Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;)V
    .locals 0
    .param p1, "controller"    # Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController$DefaultOnDoubleTapListener;->controller:Lcom/cyanogenmod/settings/contributors/ContributorsCloudViewController;

    .line 149
    return-void
.end method
