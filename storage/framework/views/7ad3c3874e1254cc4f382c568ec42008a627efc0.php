<?php echo Form::open([
    'route' => ['laravelblocker::blocker.destroy', $item->id],
    'method' => 'DELETE',
    'accept-charset' => 'UTF-8',
    'data-toggle' => 'tooltip',
    'title' => trans('laravelblocker::laravelblocker.tooltips.delete')
]); ?>

    <?php echo Form::hidden("_method", "DELETE"); ?>

    <?php echo csrf_field(); ?>

    <button class="btn btn-danger btn-block edit-form-delete" type="button" style="width: 100%;" data-toggle="modal" data-target="#confirmDelete" data-title="<?php echo e(trans('laravelblocker::laravelblocker.modals.delete_blocked_title')); ?>" data-message="<?php echo trans("laravelblocker::laravelblocker.modals.delete_blocked_message", ["blocked" => $item->value]); ?>">
        <?php echo trans("laravelblocker::laravelblocker.buttons.delete-larger"); ?>

    </button>
<?php echo Form::close(); ?>

<?php /**PATH /var/www/html/productive/vendor/jeremykenedy/laravel-blocker/src/resources/views//forms/delete-full.blade.php ENDPATH**/ ?>