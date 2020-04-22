<?php echo Form::open([
    'route' => ['laravelblocker::blocker.update', $item->id],
    'method' => 'PUT',
    'role' => 'form',
    'class' => 'needs-validation'
]); ?>

    <?php echo csrf_field(); ?>

    <?php echo $__env->make('laravelblocker::forms.partials.item-type-select', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('laravelblocker::forms.partials.item-value-input', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('laravelblocker::forms.partials.item-blocked-user-select', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('laravelblocker::forms.partials.item-note-input', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <div class="row">
        <div class="col-sm-6 offset-sm-6 mt-1">
            <?php echo Form::button(trans('laravelblocker::laravelblocker.buttons.save-larger'), array('class' => 'btn btn-success btn-block margin-bottom-1 mb-1 float-right','type' => 'submit' )); ?>

        </div>
    </div>
<?php echo Form::close(); ?>

<div class="row">
    <div class="col-sm-6 mt-2 mt-sm-0">
        <?php echo $__env->make('laravelblocker::forms.delete-full', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    </div>
</div>
<?php /**PATH /var/www/html/productive/vendor/jeremykenedy/laravel-blocker/src/resources/views//forms/edit-form.blade.php ENDPATH**/ ?>